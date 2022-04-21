class AddConfirmationSentAtToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :confirmation_sent_at, :datetime
  end
end
