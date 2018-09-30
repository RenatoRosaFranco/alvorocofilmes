# frozen_string_literal: true
module MailerInterfaceable
	include ActiveSupport::Concern

	def mail_to mailer_class, method, object, deliver = :deliver_now
		mailer_class.send(method, object).send deliver
	end
end