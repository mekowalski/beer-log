class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.email = params[:user][:email]
    if @user.save
      redirect_to beers_path
    else
      render 'users/new'
    end
  end
end
