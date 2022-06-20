class FavoritesController < ApplicationController
    def create
        @favorite = current_user.favorites.create(company_info_id: params[:company_info_id])
        redirect_back(fallback_location: company_info_path(@company_info))
    end

    def destroy
        @company_info = Company_info.find(params[:company_info_id])
        @favorite = current_user.favorites.find_by(company_info_id: @company_info.id)
        @favorite.destroy
        redirect_back(fallback_location: company_info_path(@company_info))
    end
end
