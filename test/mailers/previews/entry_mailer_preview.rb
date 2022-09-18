# Preview all emails at http://localhost:3000/rails/mailers/entry_mailer
class EntryMailerPreview < ActionMailer::Preview
    def entry
        company_info =CompanyInfo.find(1)
        entry = Entry.new(name: company_info.name , message: "問い合わせメッセージ" , email: company_info.email )

        EntryMailer.send_mail(entry)
    end
end
