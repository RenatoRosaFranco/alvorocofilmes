# frozen_string_literal: true
class NewslettersMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletters_mailer.signup.subject
  #
  def signup
    @greeting = "Hi"
    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.newsletters_mailer.cancel.subject
  #
  def cancel
    @greeting = "Hi"
    mail to: "to@example.org"
  end
end
