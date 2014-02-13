class BookingController < ApplicationController
  def index
  end

  def create 
     # Tell the UserMailer to send a welcome Email after save
     BookingMailer.booking_email().deliver
  end
  
end
