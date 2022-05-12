class Home < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_one :portfolio, dependent: :destroy

    accepts_nested_attributes_for :portfolio, allow_destroy: true
end
