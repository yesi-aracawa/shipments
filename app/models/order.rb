class Order < ApplicationRecord
    attr_accessor :payment
    attr_accessor :products
    attr_accessor :origin
    attr_accessor :sizes
    attr_accessor :kind
    attr_accessor :reference
    attr_accessor :destiny
    attr_accessor :items
    attr_accessor :courier
end
