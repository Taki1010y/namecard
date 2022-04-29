class NamecardController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
        render 'index'
    else
        render 'new'
  end
end


private
  def user_params
    params.require(:user).permit(:name, :school, :department, :email, :tel)
  end
end
