class BookingMailer < ActionMailer::Base
  default from: "booking@la-guiltiere.fr"

  def booking_email()
    mail(to: "stocks.oliver@gmail.com", subject: 'booking email')
  end
end
