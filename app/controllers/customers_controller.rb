class CustomersController < ApplicationController
    before_action :set_customer, only: [:show, :edit, :update, :destroy]

    def index
        @customers = Customer.all
    end

    def show
    
    end

    def new
        @customer = Customer.new
    end

    def create
        @customer = Customer.create(customer_params)
        if @customer
            redirect_to @customer
        else
            #flash
            redirect_to new_customer_path
        end
    end

    def edit
        
    end

    def update
        @customer.update(customer_params)
        if @customer.save
            redirect_to @customer
        else
            #flash
            redirect_to edit_customer_path
        end
    end

    def destroy
        @customer.destroy
        redirect_to customers_path
    end

    private

    def set_customer
        @customer = Customer.find(params[:id])
    end

    def customer_params
        params.require(:customer).permit(:name, :email, :royalty, :wholesale_margin)
    end
end
