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

require 'spec_helper'

describe Response do
  pending "add some examples to (or delete) #{__FILE__}"
end
