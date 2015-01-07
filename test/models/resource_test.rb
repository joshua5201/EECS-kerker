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

require 'test_helper'

class ResourceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
