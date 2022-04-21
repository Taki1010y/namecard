class AddUnconfirmedEmailToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :unconfirmed_email, :datetime
  end
end
