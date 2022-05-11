class CompanyInfosController < ApplicationController
    before_action :company_info, only: [:favorite]

def index
    @company_infos = CompanyInfo.all.page(params[:page]).per(4)
    @categories = Category.all
end

def new
    @company_info = CompanyInfo.new
end

def show
    @company_info = CompanyInfo.find(params[:id])
end

def create
    @company_info = CompanyInfo.new(company_info_params)
    if @company_info.save
        redirect_to company_info_path(@company_info)
    else
        render 'new'
    end
end

def favorite
    current_user.toggle_like!(@company_info)
    redirect_to company_info_url @company_info
end

private

    def company_info
        @company_info = CompanyInfo.find(params[:id])
    end

    def company_info_params
        params.require(:company_info).permit(:name, :address, :access, :url, :company_id, :category_id, :image)
    end
end
