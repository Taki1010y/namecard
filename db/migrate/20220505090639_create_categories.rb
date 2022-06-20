class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|

      t.string :work_category_name
      t.string :genre_name
      t.text :description

      t.timestamps
    end
  end
end
