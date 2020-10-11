class UsersController < ApplicationController
  before_action :only_loggedin_users, only: [:edit, :update]
  before_action :correct_user, only: [:edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # redirect_to @user
      redirect_to login_url
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if user.update_attributes(user_params)
      redirect_to @user
    else 
      render 'edit'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def only_loggedin_users
      redirect_to login_url unless logged_in?
    end

    def correct_user
      @user = User.find(params[:id])
      # 1. Check the user ID in order to check who is online right now
      # 2. Go to Home page IF it's not current user
      redirect_to root_url unless current_user?(@user)
    end
      


end
