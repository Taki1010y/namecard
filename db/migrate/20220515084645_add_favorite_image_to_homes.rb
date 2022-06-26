class AddFavoriteImageToHomes < ActiveRecord::Migration[5.2]
  def change
    add_column :homes, :favorite_image, :string
  end
end
