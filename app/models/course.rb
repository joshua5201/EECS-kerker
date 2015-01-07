# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  instructor  :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  semester    :integer
#

class Course < ActiveRecord::Base
  has_many :resources, dependent: :destroy
  accepts_nested_attributes_for :resources, allow_destroy: true
end
