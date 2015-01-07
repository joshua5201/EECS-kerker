class ChangeSemesterToInteger < ActiveRecord::Migration
  def change
    remove_column :courses, :semester
    add_column :courses, :semester, :integer
  end
end
