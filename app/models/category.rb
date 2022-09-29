class Category < ApplicationRecord
    has_many :company_infos

    scope :work_categories, -> { pluck(:work_category_name).uniq }
    scope :request_category, -> (category) {
    if category != "none"
        find(category.to_i)
    else
        ""
    end
    }
    
end
