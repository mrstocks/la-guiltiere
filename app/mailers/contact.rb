class Contact < ActionMailer::Base
  default from: "contact@la-guiltiere.fr"

  def contact_email()
    mail(to: "stocks.oliver@gmail.com", subject: 'Contact Message')
  end
end