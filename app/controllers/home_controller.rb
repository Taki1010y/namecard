class HomeController < ApplicationController
  def index
    @homes = Home.all
  end

  def new
    @home = Home.new
  end

  def create
    @home = Home.new(home_params)
    if @home.save
        render 'index'
    else
        render 'new'
  end
end

private
  def home_params
    params.permit(:name, :school, :address, :phone, :department, :favorite, :title, :caption)
  end

end
