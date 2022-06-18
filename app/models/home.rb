class Home < ApplicationRecord
    mount_uploader :image, ImageUploader
    mount_uploader :favorite_image, ImageUploader
    has_one :portfolio, dependent: :destroy
    validates :image, presence: true

    accepts_nested_attributes_for :portfolio, allow_destroy: true
end
