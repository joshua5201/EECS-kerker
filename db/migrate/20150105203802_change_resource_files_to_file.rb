class ChangeResourceFilesToFile < ActiveRecord::Migration
  def change
    rename_column :resources, :files, :file
    change_column :resources, :file, :string
  end
end
