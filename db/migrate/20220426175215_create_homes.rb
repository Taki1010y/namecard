class CreateHomes < ActiveRecord::Migration[5.2]
  def change
    create_table :homes do |t|
      t.string :name 
      t.string :school 
      t.string :address 
      t.string :department 
      t.string :phone 

      t.string :favorite_a 
      t.string :favorite_b 
      t.string :favorite_c 
      t.string :favorite_d 
      
      t.string :title 
      t.text :caption 
      t.timestamps
    end
  end
end
