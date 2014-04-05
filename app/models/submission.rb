# == Schema Information
#
# Table name: submissions
#
#  id                 :integer          not null, primary key
#  email              :string(255)
#  name               :string(255)
#  pickup             :boolean
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#  created_at         :datetime
#  updated_at         :datetime
#  type_id            :integer
#  transform_id       :integer
#

class Submission < ActiveRecord::Base
  belongs_to :transform
  belongs_to :type
  has_many :responses
  # after_commit :process

  # Set custom attribute accessor for treating S3 URL as attribute
  attr_reader :image_remote_url

  # Hooks for Paperclip-dependent attributes
  has_attached_file :image,
    styles: { processed: { transform: "yellow" } },
    processors: [:cropper, :colorizer]

  # Validations
  validates_attachment_presence :image
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)

  # Custom attribute accessors
  def image_remote_url=(url_value)
    self.image = URI.parse(url_value)
    @image_remote_url = url_value
  end

  private

    def process
      logger.debug "Processing image after commit for entry #{self.name}"
      ImageProcessor.perform_async(self.id)
    end
end
