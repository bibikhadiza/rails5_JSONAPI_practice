class NotesController < JSONAPI::ResourceController
  before_action :locate_folder, only: [:create]







  private

  def locate_folder
    if params["data"]["relationships"]["folder"]["data"]["folder"] != nil
      path = params["data"]["relationships"]["folder"]["data"]["folder"]
      if Folder.path_exists?(path)
        folder_record = Folder.find_by(title: path.split("/").last)
        params["data"]["relationships"]["folder"]["data"] = {"type"=>"folders", "id"=>"#{folder_record.id.to_s}"}
      end
    end
  end


end
