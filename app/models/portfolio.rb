class Portfolio < ApplicationRecord
    belongs_to :home
    mount_uploader :image, ImageUploader
    mount_uploader :first_image, ImageUploader
    mount_uploader :second_image, ImageUploader

    validates :image, presence: true
end
