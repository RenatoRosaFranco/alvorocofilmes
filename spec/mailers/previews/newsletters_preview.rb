# Preview all emails at http://localhost:3000/rails/mailers/newsletters
class NewslettersPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/newsletters/signup
  def signup
    NewslettersMailer.signup
  end

  # Preview this email at http://localhost:3000/rails/mailers/newsletters/cancel
  def cancel
    NewslettersMailer.cancel
  end

end
