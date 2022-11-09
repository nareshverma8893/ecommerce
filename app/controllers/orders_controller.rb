class OrdersController < ApplicationController
    def index
        @order = Order.find(params[:id])
        @order.lineitems
    end
end
