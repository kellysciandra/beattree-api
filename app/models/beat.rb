class Beat < ApplicationRecord
    # belongs_to :artist
    has_one_attached :file
    # validates_attachment_content_type :file, :content_type => { :content_type => ["audio/mpeg", "audio/mp3"] }, :file_name => { :matches => [/mp3\Z/]}
end
