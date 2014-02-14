class ContactUsController < ApplicationController
  def index
  end

  def create
     
  
     # Tell the UserMailer to send a welcome Email after save
     Contact.contact_email(contact_text_params).deliver
  end

  private
    def get_site_title
      @title = "La Guiltiere - Contact";
    end

   def contact_text_params
     params.require(:contact_us).permit(:name,:email,:telephone,:message)
   end 
end
