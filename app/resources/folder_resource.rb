class FolderResource < JSONAPI::Resource
  attributes :title
  has_many :sub_folders, class_name: "Folder",
                         foreign_key: "parent_folder_id"

  belongs_to :parent_folder, class_name: "Folder"
end
