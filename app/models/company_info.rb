class CompanyInfo < ApplicationRecord
    validates :name, {presence: true}
    validates :address, {presence: true}
    has_many :favorites, dependent: :destroy
    
    belongs_to :category
    PER = 15
    
    scope :display_list, -> (category, page) { 
        if category != "none"
        where(category_id: category).page(page).per(PER)
        else
        page(page).per(PER)
        end
    }


    mount_uploader :image, ImageUploader
    acts_as_likeable
end
