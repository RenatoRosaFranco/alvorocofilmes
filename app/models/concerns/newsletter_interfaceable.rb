# frozen_string_literal: true
module NewsletterInterfaceable
	include ActiveSupport::Concern

	enum status: [:enabled, :disabled]

	def signup
		set_token
		set_status :enabled
		set_signup_date
		save!
	end

	def cancel
		remove_token
		set_status :disabled
		save!
	end

	private
		def set_token
			self.token = SecureRandom.urlsafe_base64
		end

		def remove_token
			self.token = nil
		end

		def set_status status = :enabled
			self.status = status
		end

		def set_signup_date date = Date.new
			self.date = date
		end
end