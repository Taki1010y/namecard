class Favorite < ApplicationRecord
    belongs_to :user
    belongs_to :company_info

    validates_uniqueness_of :company_info_id, scope: :user_id
end
