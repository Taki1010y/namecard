class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|

      t.belongs_to :home, index: { unique: true }, foreign_key: true
      t.string :title 
      t.text :caption 
      t.string :first_title 
      t.text :first_caption 
      t.string :second_title 
      t.text :second_caption 
      t.timestamps
    end
  end
end
