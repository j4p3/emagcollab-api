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

require 'spec_helper'

describe Submission do
  pending "add some examples to (or delete) #{__FILE__}"
end
