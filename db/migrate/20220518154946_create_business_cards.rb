class CreateBusinessCards < ActiveRecord::Migration[5.2]
  def change
    create_table :business_cards do |t|
      t.references :home, index: true
      t.references :company_info, index: true
      t.timestamps
    end
  end
end
