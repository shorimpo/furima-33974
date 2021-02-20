class ChangeOptionsToScheduleddeliveries < ActiveRecord::Migration[6.0]
  def change
    change_column :scheduleddeliveries, :scheduled_delivery_id, :integer, null: false
    change_column :scheduleddeliveries, :text, :text, null: false
  end
end
