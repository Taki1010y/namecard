class ProgressStatus < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :company_info, optional: true

    validates :user_id, uniqueness: true
    validates :company_info_id, uniqueness: true
end
