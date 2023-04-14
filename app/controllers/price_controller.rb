class PriceController < ApplicationController
    def price_callback
        render json: User.all 
    end
end
