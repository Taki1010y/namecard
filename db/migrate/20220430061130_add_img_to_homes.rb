class AddImgToHomes < ActiveRecord::Migration[5.2]
  def change
    add_column :homes, :image_profile, :string
    add_column :homes, :image_work_first, :string
    add_column :homes, :image_work_second, :string
    add_column :homes, :image_work_third, :string
  end
end
