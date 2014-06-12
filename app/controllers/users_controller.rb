class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new( params[:user] )
    if @user.save
      # Successful save
      flash[:success] = 'Welcome to the Prayer Reminder Service'
      redirect_to @user
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

end
