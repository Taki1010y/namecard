class HomeController < ApplicationController
  before_action :set_home, only: [:show, :edit, :update, :destroy]
  def new
    @home = Home.new
  end

  def create
    @home = Home.new(home_params)
    if @home.save
      redirect_to home_path(@home)
    else
      render 'new'
    end
  end

def show
end

private
  def home_params
    params.require(:home).permit(:name, :school, :address, :phone, :department, :favorite, :title, :caption,:image)
  end

  def set_home
    @home = Home.find(params[:id])
  end

end
