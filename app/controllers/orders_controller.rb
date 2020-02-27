class OrdersController < ApplicationController
    before_action :set_order, only: [:show, :edit, :update, :destroy]

    def index
        @orders = Order.all
    end

    def show
    
    end

    def new
        @order = Order.new
    end

    def create
        @order = Order.create(order_params)
        if @order
            redirect_to @order
        else
            #flash
            redirect_to new_order_path
        end
    end

    def edit
        
    end

    def update
        @order.update(order_params)
        if @order.save
            redirect_to @order
        else
            #flash
            redirect_to edit_order_path
        end
    end

    def destroy
        @order.destroy
        redirect_to orders_path
    end

    private

    def set_order
        @order = Order.find(params[:id])
    end

    def order_params
        params.require(:order).permit(:delivery_date, :status)
    end
end
