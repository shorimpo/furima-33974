class AddColumnsToScheduleddeliveries < ActiveRecord::Migration[6.0]
  def change
    add_column :scheduleddeliveries, :scheduled_delivery_id, :integer
    add_column :scheduleddeliveries, :text, :text
  end
end
