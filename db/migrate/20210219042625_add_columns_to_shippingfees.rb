class AddColumnsToShippingfees < ActiveRecord::Migration[6.0]
  def change
    add_column :shippingfees, :shipping_fee_status_id, :integer
    add_column :shippingfees, :text, :text
  end
end
