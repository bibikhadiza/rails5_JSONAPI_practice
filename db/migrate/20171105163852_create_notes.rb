class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :content
      t.integer :folder_id

      t.timestamps
    end
  end
end
