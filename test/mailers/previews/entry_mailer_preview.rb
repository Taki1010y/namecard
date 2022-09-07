# Preview all emails at http://localhost:3000/rails/mailers/entry_mailer
class EntryMailerPreview < ActionMailer::Preview
    def entry
        user =User.find(40)
        entry = Entry.new(name: user.name , message: "問い合わせメッセージ" , email: user.email )

        EntryMailer.send_mail(entry)
    end
end
