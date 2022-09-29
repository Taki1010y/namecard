class AddFirstImageToPortfolios < ActiveRecord::Migration[5.2]
  def change
    add_column :portfolios, :first_image, :string
  end
end
