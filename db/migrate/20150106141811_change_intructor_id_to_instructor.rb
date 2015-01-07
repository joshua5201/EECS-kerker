class ChangeIntructorIdToInstructor < ActiveRecord::Migration
  def change
    rename_column :courses, :instructor_id, :instructor
    change_column :courses, :instructor, :string
  end
end
