# == Schema Information
#
# Table name: transforms
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  hsl        :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Transform < ActiveRecord::Base
end
