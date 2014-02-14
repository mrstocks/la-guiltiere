class BookingController < ApplicationController
 
  public
    def index
    end

    def create
      #i hate this FIXME 
      text = booking_text_params
      date = booking_date_params
      people = params[:people_on_board]

      # Tell the UserMailer to send a welcome Email after save
      BookingMailer.booking_email(text, date, people).deliver
    end

  private 
    def booking_text_params
      params.require(:booking).permit(:arrival, :departure, :animals, :email, :telephone)
    end

    def booking_date_params
      params.require(:date).permit(:day_of_arrival, :month_of_arrival, :day_of_departure, :month_of_departure)
    end

end
