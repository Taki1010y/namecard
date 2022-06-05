class CompanyInfosController < ApplicationController
    before_action :set_company_info, only: [:favorite, :show, :edit, :update,]

def index
    @company_infos = CompanyInfo.display_list(category_params, params[:page])
    @category = Category.request_category(category_params)
    @categories = Category.all
    @work_category_names = Category.work_categories
end

def new
    @company_info = CompanyInfo.new
end

def show
end

def create
    @company_info = CompanyInfo.new(company_info_params)
    if @company_info.save
        redirect_to company_info_path(@company_info)
    else
        render 'new'
    end
end

def edit
end

def update
    if @company_info.update(company_info_params)
        redirect_to @company_info
    else
        render 'edit'
    end
end

def favorite
    current_user.toggle_like!(@company_info)
    redirect_to company_info_url @company_info
end

def apply
    @company_info = CompanyInfo.find(params[:company_info_id])
    progress_status = ProgressStatus.new
    progress_status.user_id = current_user.id
    progress_status.company_info_id = params[:company_info_id]
    if progress_status.save
        redirect_to company_infos_path, notice: "送信完了しました。"
    else
        flash[:alert] = "エントリー済みのため操作を完了できません。"
        render 'show'
    end
end

private

    def set_company_info
        @company_info = CompanyInfo.find(params[:id])
    end

    def company_info_params
        params.require(:company_info).permit(:name, :address, :access, :url, :company_id, :category_id, :image)
    end

    def category_params
        params[:category].present? ? params[:category]
        : "none"
    end

end
