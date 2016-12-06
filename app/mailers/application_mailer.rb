class ApplicationMailer < ActionMailer::Base
  default to: "admin@audiovape.io", from: "admin@audiovape.io"
  layout 'mailer'
end
