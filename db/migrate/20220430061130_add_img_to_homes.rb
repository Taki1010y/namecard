class AddImgToHomes < ActiveRecord::Migration[5.2]
  def change
    add_column :homes, :image, :string
  end
end
