class Story < ApplicationRecord
    mount_uploader :thumbnail_image, ImageUploader
end
