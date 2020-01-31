class SellersController < ApplicationController

    def new 
        @seller = Seller.new
    end

    def create 
        @seller = Seller.create(seller_params)
        if @seller.save
            session[:seller_id] = @seller.id
            redirect_to seller_path(@seller) 
        else
            render :new
        end
            
    end

    def index 
    @sellers = Seller.all
    end

    def show 
        @seller = Seller.find_by_id(params[:id])
        redirect_to "/" if !@seller
    end

    private

    def seller_params 
        params.require(:seller).permit(:email_address, :password, :location, :name)
    end

end
