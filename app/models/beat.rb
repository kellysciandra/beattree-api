class Beat < ApplicationRecord
    # belongs_to :artist
    has_one_attached :file 


    def file_on_disk
        ActiveStorage::Blob.service.send(:path_for, file.key)
    end
end
