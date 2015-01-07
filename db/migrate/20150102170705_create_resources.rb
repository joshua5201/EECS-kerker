class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.text :description
      t.json :files
      t.integer :user_id
      t.integer :course_id

      t.timestamps
    end
  end
end
