class Document < ApplicationRecord
    mount_uploader :image, ImageUploader
    mount_uploader :file, FileUploader
    belongs_to :blog
end