class ContactMailer < ApplicationMailer
  default from: 'farheenzahara@gmail.com'

  def notification_email(contact)
    @contact = contact
    mail(to: 'info@ajackus.com', subject: "A contact with the name #{@contact.first_name} #{@contact.last_name} has been added.")
  end
end
