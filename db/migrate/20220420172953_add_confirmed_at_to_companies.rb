class AddConfirmedAtToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :confirmed_at, :datetime
  end
end
