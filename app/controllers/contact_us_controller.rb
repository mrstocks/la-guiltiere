class ContactUsController < ApplicationController
  def index
  end

  def create
     # Tell the UserMailer to send a welcome Email after save
     Contact.contact_email().deliver
  end

end
