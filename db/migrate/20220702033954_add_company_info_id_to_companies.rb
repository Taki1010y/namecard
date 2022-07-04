class AddCompanyInfoIdToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_reference :companies, :company_info, foreign_key: true
  end
end
