# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
def contact_email
    ContactMailer.contact_email("jc00721@surrey.ac.uk","James", "test subject", @message = "test")
end
end
