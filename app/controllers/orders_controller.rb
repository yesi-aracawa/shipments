class OrdersController < ApplicationController
    def index
        response = RestClient::Request.new({
            method: :get,
            url: "https://#{ENV['SHOPIFY_SHOP']}.myshopify.com/admin/api/2021-01/orders.json",
            headers: {'Content_type': 'application/x-www-form-urlencoded', 'X-Shopify-Access-Token': "#{ENV['SHOPIFY_API_TOKEN']}"}
            }).execute
        @orders = JSON.parse(response)
        #render json: @orders
    end

    def show_id
        @order = Order.find(params[:id])
    end
  end