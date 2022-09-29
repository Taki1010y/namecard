class SampleMailer < ApplicationMailer
    def send_mail(user)
        @user = user
        mail(subject: '確認メール',to: user.email, from: "takizawa.1211rou@gmail.com")
    end 
    
    def self.send_mail_users
        @users = User.all
        @users.each do |user|
        SampleMailer.send_mail(user).deliver_now
        end 
    end
end
