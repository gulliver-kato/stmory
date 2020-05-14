class Story < ApplicationRecord
    mount_uploader :thumbnail_image, ImageUploader
    has_many :parts
end
