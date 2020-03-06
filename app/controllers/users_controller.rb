class UsersController < ApplicationController
   
    def index
        @users = User.all  
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid? 
        session[:user_id] = @user.id
        redirect_to user_path(@user.id)
        else
        redirect_to new_user_path
        end
    end

    def logout
        reset_session
        redirect_to memes_path
    end

    def show
        @user = User.find(params[:id])
    end

private

    def user_params
        params.require(:user).permit(:name, :age)
    end

   
end
