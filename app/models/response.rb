# == Schema Information
#
# Table name: responses
#
#  id            :integer          not null, primary key
#  submission_id :integer
#  question_id   :integer
#  content       :text
#  created_at    :datetime
#  updated_at    :datetime
#

class Response < ActiveRecord::Base
  belongs_to :question
  belongs_to :submission
end
