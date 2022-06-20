class CreateCompanyInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :company_infos do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :access
      t.string :url
      t.integer :company_id, index: true
      t.integer :category_id

      t.timestamps
    end
  end
end
