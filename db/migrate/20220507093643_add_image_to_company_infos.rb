class AddImageToCompanyInfos < ActiveRecord::Migration[5.2]
  def change
    add_column :company_infos, :image, :string
  end
end
