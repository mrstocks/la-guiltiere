class BookingMailer < ActionMailer::Base
  default from: "booking@la-guiltiere.fr"

  def booking_email(text, date, people)
    # we have to do that so the view can access that variable
    @text = text
    @date = date
    @people = people


    mail(to: "stocks.oliver@gmail.com", subject: 'Booking form the website')
  end
end
