class HomeController < ApplicationController

    def about

        # Test for show the current_user.product 1st of others
        # @products = @products.sort_by { |product| product.user == current_user ? 0 : 1 }

        @products = Product.all
    end

    def favorite
        @user = current_user
    end

    def user
        @user = current_user

    end

    def history
        @user = current_user
        @orders = current_user.orders
    end
end