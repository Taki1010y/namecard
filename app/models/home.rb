class Home < ApplicationRecord
    mount_uploader :image, ImageUploader

    has_many :business_cards, dependent: :destroy
    has_many :company_infos, through: :business_cards
    accepts_nested_attributes_for :business_cards, allow_destroy: true
end
