class ChangeOptionToShippingfees < ActiveRecord::Migration[6.0]
  def change
    change_column :shippingfees, :shipping_fee_status_id, :integer, null: false
    change_column :shippingfees, :text, :text, null: false
  end
end
