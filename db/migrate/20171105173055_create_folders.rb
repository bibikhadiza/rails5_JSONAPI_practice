class CreateFolders < ActiveRecord::Migration[5.0]
  def change
    create_table :folders do |t|
      t.string :title
      t.references :parent_folder, index: true 
      t.timestamps
    end
  end
end
