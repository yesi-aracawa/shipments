class ShipmentsController < ApplicationController

    def index
        @shipments = Shipment.all
    end

    def new
        @shipment = Shipment.new
    end

    def create
        @shipment = Shipment.new(shipment_params)
 
        @shipment.save
        redirect_to @shipment
    end
       
    private
    def shipment_params
        params.require(:shipment).permit(:order_number, :total_price, :subtotal_price, :status, :sku, :deliver_name)
    end

    def show
         #@shipment = Shipment.find(params[:id])
    end
end
