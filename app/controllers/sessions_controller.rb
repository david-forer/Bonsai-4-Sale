class SessionsController < ApplicationController

    def welcome

    end 

    def destroy 
        session.delete(:user_id)
        redirect_to '/'
    end

    def new 

    end

    def create 
        @user = User.find_by(username: params[:user][:username])

        if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
        else
        flash[:error] = "Sorry, login info was incorrect. Please try again."
        redirect_to login_path
        end

        # @seller = Seller.find_by(email: params[:seller][:email])

        # if @seller && @seller.authenticate(params[:email][:password])
        # session[:seller_id] = @seller.id
        # redirect_to seller_path(@seller)
        # else
        # flash[:error] = "Sorry, login info was incorrect. Please try again."
        # redirect_to login_path
        # end


    end
end
