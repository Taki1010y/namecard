class NamecardController < ApplicationController
  def index
    @family_name = ""
  end

  def post_name
    @family_name = params[:family_name]
    @school_name = params[:school_name]
    @school_name = params[:school_name]
    render "namecard/page" and return
  end

  def page

  end
end
