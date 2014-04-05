class ImageProcessor
  include Sidekiq::Worker
  sidekiq_options retry: false
  require 'RMagick'
 
  def perform(submission_id)
    logger.debug "Image processor worker called"
    @submission = Submission.find(submission_id)
    url = @submission.original_image.url
    @submission.processed_image = url
    @submission.save
  end
end