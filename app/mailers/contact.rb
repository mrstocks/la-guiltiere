class Contact < ActionMailer::Base
  default from: "booking@la-guiltiere.fr"

  def contact_email(contact_var)
    @contact_var = contact_var

    mail(to: "stocks.oliver@gmail.com", subject: 'Contact Message')
  end
end
