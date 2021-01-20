class CreateShipments < ActiveRecord::Migration[5.2]
  def change
    create_table :shipments do |t|
      t.string :order_number
      t.string :total_price
      t.string :subtotal_price
      t.string :status
      t.string :sku
      t.string :deliver_name

      t.timestamps
    end
  end
end
