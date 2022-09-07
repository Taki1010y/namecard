class EntryMailer < ApplicationMailer

    def send_mail(entry)
        @entry = entry
        mail(
            from: entry.email,
            to:   'takizawa@gmail.com',
            subject: 'こんにちは、この度はエントリーいただき誠にありがとうございます！'
        )
    end

    def self.send_mail_users
        @user =User.find(80)
        EntryMailer.send_mail(@user).deliver_now
    end
end
