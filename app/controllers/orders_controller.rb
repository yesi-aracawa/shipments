class OrdersController < ApplicationController
    def index
        orders = RestClient::Request.new({
            method: :get,
            url: "https://#{ENV['SHOPIFY_SHOP']}.myshopify.com/admin/api/2021-01/orders.json",
            headers: {'Content_type': 'application/x-www-form-urlencoded', 'X-Shopify-Access-Token': "#{ENV['SHOPIFY_API_TOKEN']}"}
            }).execute do |response, request, result|
            case response.code
            when 400
                [ :error, JSON.parse(response.to_str) ]
            when 200
                [ :success, JSON.parse(response.to_str) ]
            else
                fail "Invalid response #{response.to_str} received."
            end
         end
        
        render json: orders
    end
  end