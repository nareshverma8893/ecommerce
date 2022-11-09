class OrdersController < ApplicationController

    def index
        @orders = Order.all
    end

    def destroy
        @order = Order.find(params[:id])
        @order.destroy
        redirect_to root_path
      end
    # def index
    #     @order = Order.find(params[:order_id])
    #     @order.lineitems
    # end
    private

    def order_params
        params.require(:order).permit(:title, :price, :order_id)    
    end

end
