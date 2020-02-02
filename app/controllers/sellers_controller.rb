class SellersController < ApplicationController

    def new 
        @seller = Seller.new
    end

    def create 
        @seller = Seller.create(seller_params)
        if @seller.save
            session[:id] = @seller.id
            redirect_to seller_path(@seller) 
        else
            render :new
        end
            
    end

    def login

        @seller = Seller.find_by_email_address(params[:email_address])
        if @seller && @seller.authenticate(params[:password])
            session[:id] = @seller.id
            redirect_to sellers_path
        else
            # redirect_to plants_path
        end
            
      
        # @seller = Seller.find_by_email_address(email_address: params[:seller][:email_address])

        # if @seller && @seller.authenticate(params[:email_address][:password])
        # session[:seller_id] = @seller.id
        # redirect_to seller_path(@seller)
        # else
        # flash[:error] = "Sorry, login info was incorrect. Please try again."
        # redirect_to login_path
        # end

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
        params.require(:seller).permit(:email_address, :password, :location, :name, :username, :id)
     end

end
