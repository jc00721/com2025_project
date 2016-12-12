class HomeController < ApplicationController
  def home
  end
  
  def contact
  end
  
  def request_contact
    name = params[:name]
    email = params[:email]
    subject = params[:subject]
    message = params[:message]
    if email.blank?
      flash[:alert] = I18n.t("home.request_contact.no_email")
    else
      ContactMailer.contact_email(email, name, subject, message).deliver_now
      flash[:notice] = I18n.t("home.request_contact.enail_sent")
    end
   redirect_to root_path
  end
end
