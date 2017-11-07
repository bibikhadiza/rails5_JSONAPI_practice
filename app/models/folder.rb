class Folder < ApplicationRecord
  has_many :sub_folders, class_name: "Folder",
                         foreign_key: "parent_folder_id"

  belongs_to :parent_folder, class_name: "Folder", optional: true
  has_many :notes

  validates :title, presence: true
  validates :title, uniqueness: true

  def self.path_exists?(path)
     if !path.include? "/"
        if folder = Folder.find_by(title: path)
          return true
        end
     else
       parse_path(path)
     end
  end


  private

  def self.parse_path(path)
    col_of_filenames = path.split("/")
    col_of_filenames.reverse.each_with_index do |e, i|
      folder_record = Folder.find_by(title: e)
      if folder_record
        if folder_record.parent_folder && folder_record.parent_folder.title != col_of_filenames.reverse[i + 1]
          return false
        end
      end
    end
    return true
  end


end
