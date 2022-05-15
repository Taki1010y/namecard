class UserController < ApplicationController
    def favorite
        @favorites = @user.likees(CompanyInfo)
    end
end
