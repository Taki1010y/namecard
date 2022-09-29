class RemoveCategoryFromCompanies < ActiveRecord::Migration[5.2]
  def change
    remove_column :companies, :category_id, :integer
  end
end
