class CartController < ApplicationController
    def show
    end

    def remove_product
        session[:product_cart].delete(params[:id])
        redirect_to cart_path
    end
end
