class MailsController < ApplicationController
  def index 
  end 
  
  def send_mail
    EntryMailer.send_mail
    redirect_to mails_index_path
  end 
end
