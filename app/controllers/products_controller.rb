class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :edit, :update, :destroy]

    def index
        (@filterrific = initialize_filterrific(
            Product,
            params[:filterrific],
            select_options: {
                sorted_by: Product.options_for_sorted_by
            }
        )) || return

        @products = @filterrific.find

        respond_to do |format|
            format.html
            format.js
        end
    end

    def show
    
    end

    def new
        @product = Product.new
    end

    def create
        @product = Product.create(product_params)
        if @product
            redirect_to @product
        else
            #flash
            redirect_to new_product_path
        end
    end

    def edit
        
    end

    def update
        @product.update(product_params)
        if @product.save
            redirect_to @product
        else
            #flash
            redirect_to edit_product_path
        end
    end

    def destroy
        @product.destroy
        redirect_to products_path
    end

    private

    def set_product
        @product = Product.find(params[:id])
    end

    def product_params
        params.require(:product).permit(:name, :sku, :size, :color, :amount, :image, :cost, :price) #don't need these :search_query, :sorted_by) 
    end
end
