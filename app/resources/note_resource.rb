class NoteResource < JSONAPI::Resource
  attributes :title, :content
  belongs_to :folder
end
