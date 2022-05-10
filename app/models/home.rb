class Home < ApplicationRecord
    mount_uploader :image, ImageUploader
    has_one :portfolio, dependent: :destroy
end
