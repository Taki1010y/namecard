class ProgressStatus < ApplicationRecord
    belongs_to :user, optional: true
    belongs_to :company_info, optional: true
end
