class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.integer :instructor_id
      t.string :semester

      t.timestamps
    end
  end
end
