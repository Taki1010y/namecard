class ApplicantsController < ApplicationController
  def index
    @progress_status = ProgressStatus.all
  end

  def show
  end
end
