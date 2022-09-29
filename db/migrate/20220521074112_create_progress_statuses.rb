class CreateProgressStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :progress_statuses do |t|

      t.integer :user_id, null: false
      t.integer :company_info_id, null: false
      t.timestamps
    end
    add_index :progress_statuses, [:user_id, :company_info_id], unique: true

  end
end
