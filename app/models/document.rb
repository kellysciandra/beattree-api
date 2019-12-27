class Document < ApplicationRecord
  belongs_to :beat
  has_attached_file :file 
  validates_attachment :file, presence: true, content_type: { content_type: 'application/mp3'}
end
