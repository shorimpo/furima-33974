class ChangeOptionToStatus < ActiveRecord::Migration[6.0]
  def change
    change_column :statuses, :text, :text, null: false
    change_column :statuses, :sales_status_id, :integer, null: false
  end
end
