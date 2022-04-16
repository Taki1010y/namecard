class DeleteCimpanles < ActiveRecord::Migration[5.2]
  def change
    drop_table :cimpanles
  end
end
