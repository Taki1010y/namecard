class CompanyInfosController < ApplicationController
    
def index
    @company_infos = CompanyInfo.new
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

private
    def company_info_params
        params.require(:company_info).permit(:name, :address, :access, :url, :company_id, :category_id, :image)
    end
end
