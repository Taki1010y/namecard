class ApplicantsController < ApplicationController
  before_action :set_company_info, only: [:index, :show]

  def index
    @users = @company_info.users
  end

  def show
    @user = @company_info.users.find(params[:id])
    @home = @user.home
  end

  private
  def set_company_info
    @company_info = current_company.company_info
  end

end
