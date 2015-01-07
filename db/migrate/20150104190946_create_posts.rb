class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :content
      t.integer :event_id
      t.integer :course_id
      t.integer :user_id

      t.timestamps
    end
  end
end
