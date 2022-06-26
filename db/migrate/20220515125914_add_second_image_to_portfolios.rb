class AddSecondImageToPortfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :second_image, :string
  end
end
