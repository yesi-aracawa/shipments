class Shipment < ApplicationRecord
    attr_accessor :order_number
    attr_accessor :total_price
    attr_accessor :subtotal_price
    attr_accessor :status
    attr_accessor :sku
    attr_accessor :deliver_name 
end
