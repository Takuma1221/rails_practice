class UsersController < ApplicationController

    def show
      @user = User.find(params[:id])
    end
  
    def new
      @user = User.new
    end

    def index
      @users = User.all
    end
  
    def create
      @user = User.create(user_params)
      if @user.persisted?
        redirect_to root_path, notice: 'ユーザーが作成されました。'
      else
        render :new
      end
    end
    private
  
    def user_params
      params.require(:user).permit(:name, :email, :content)
    end
  end