class ApplicantsController < ApplicationController
  def index
    @progress_status = ProgressStatus.where(user_id:17)
  end

  def show
    
  end
end
