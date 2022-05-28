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

    belongs_to :user
    has_many :favorites, dependent: :destroy

    has_many :progress_status
    has_many :users, through: :progress_status
    # has_many :business_cards
    # has_many :homes, through: :business_cards
    # accepts_nested_attributes_for :todo_tags

    mount_uploader :image, ImageUploader
    acts_as_likeable
end
