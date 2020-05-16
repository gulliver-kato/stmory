class Story < ApplicationRecord
    mount_uploader :thumbnail_image, ImageUploader
    has_many :parts, dependent: :destroy
    accepts_nested_attributes_for :parts, allow_destroy: true
end
