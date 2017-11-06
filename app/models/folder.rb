class Folder < ApplicationRecord
  has_many :sub_folders, class_name: "Folder",
                         foreign_key: "parent_folder_id"

  belongs_to :parent_folder, class_name: "Folder", optional: true
  has_many :notes

  validates :title, presence: true

end
