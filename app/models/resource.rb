# == Schema Information
#
# Table name: resources
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  file        :string(255)
#  user_id     :integer
#  course_id   :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Resource < ActiveRecord::Base
  mount_uploader :file, FileUploader
  belongs_to :course
end
