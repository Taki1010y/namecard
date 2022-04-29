class HomeController < ApplicationController
  before_action :set_homes_all, only: [:index, :new]

  def index
  end

  def new
    @home = Home.new
  end

  def create
    @home = Home.new(home_params)
    if @home.save
        redirect_to home_index_path
    else
        render 'new'
  end
end

def show
end

private
  def home_params
    params.require(:home).permit(:name, :school, :address, :phone, :department, :favorite, :title, :caption)
  end

  def set_homes_all
    @homes = Home.all
  end

end
