class NoteResource < JSONAPI::Resource
  attributes :title, :content
  has_one :folder
  filter :folder
end
