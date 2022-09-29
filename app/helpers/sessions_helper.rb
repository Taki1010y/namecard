module SessionsHelper
    def current_company
        @current_company ||= Company.find_by(id: session[:Company_id])
    end
end