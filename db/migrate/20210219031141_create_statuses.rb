class CreateStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :statuses do |t|
      t.integer :sales_status_id
      t.text :text

      t.timestamps
    end
  end
end
