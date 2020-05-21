class Story < ApplicationRecord
    validates :admin_title, presence: true
    validates :title, presence: true
    
    mount_uploader :thumbnail_image, ImageUploader
    has_many :parts, dependent: :destroy
    accepts_nested_attributes_for :parts, allow_destroy: true
    belongs_to :user
end