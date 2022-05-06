class CompaniesController < ApplicationController
  PER = 15
  
  def index
    @companies = Company.page(params[:page]).per(PER)
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
    @categories = Category.all
  end

  def create
    @company = Company.new(company_params)
    @company.save
    redirect_to company_url @company
  end

  def edit
    @company = Company.find(params[:id])
    @categories = Category.all
  end

  def update
    @company = Company.find(params[:id])
    @company.update(company_params)
    redirect_to companies_url @company
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    redirect_to companies_url
  end

  private
    def company_params
      params.require(:company).permit(:name, :company_name, :category_id)
    end
end
