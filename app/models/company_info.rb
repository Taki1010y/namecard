class CompanyInfo < ApplicationRecord
    validates :name, {presence: true}
    validates :address, {presence: true}
    
    mount_uploader :image, ImageUploader
end
