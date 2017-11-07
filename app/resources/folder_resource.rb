class FolderResource < JSONAPI::Resource
  attributes :title
  has_many :sub_folders, class_name: "Folder",
                         foreign_key: "parent_folder_id"

  has_one :parent_folder, class_name: "Folder", optional: true
  has_many :notes
end
