class AddConfirmationTokenToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :confirmation_token, :string
  end
end
