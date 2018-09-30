# Preview all emails at http://localhost:3000/rails/mailers/contact
class ContactPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/contact/sended
  def sended
    ContactMailer.sended
  end

  # Preview this email at http://localhost:3000/rails/mailers/contact/received
  def received
    ContactMailer.received
  end

end
