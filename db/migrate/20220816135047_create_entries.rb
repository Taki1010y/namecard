class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.string :name
      t.string :message

      t.timestamps
    end
  end
end
