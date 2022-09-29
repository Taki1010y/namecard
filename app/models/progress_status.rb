class ProgressStatus < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :company_info, optional: true

    validates :user_id, uniqueness: { scope: :company_info_id }
end
