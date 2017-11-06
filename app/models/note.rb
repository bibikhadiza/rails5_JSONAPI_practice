class Note < ApplicationRecord
  belongs_to :folder
  validates :title, :content, :folder, presence: true
end
