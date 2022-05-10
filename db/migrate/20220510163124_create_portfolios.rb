class CreatePortfolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portfolios do |t|

      t.belongs_to :home, index: { unique: true }, foreign_key: true
      t.string :title 
      t.text :caption 
      t.timestamps
    end
  end
end
