class UsersController < ApplicationController
	before_action :set_user, only: [:favorite]

  def favorite
    @favorites = @user.likees(CompanyInfo)
  end



private
	def set_user
		@user = User.find(params[:id])
	end
end
