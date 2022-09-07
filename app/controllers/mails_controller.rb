class MailsController < ApplicationController
  def index 
  end 
  
  def send_mail
    EntryMailer.send_mail_user
    redirect_to mails_index_path
  end 
