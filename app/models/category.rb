class Category < ApplicationRecord
    has_many :categories

    scope :work_categories, -> { pluck(:work_category_name).uniq }
    
end
