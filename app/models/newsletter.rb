# frozen_string_literal: true
class Newsletter < ApplicationRecord
	include NewsletterInterfaceable
	
	extend FriendlyId
	friendly_id :name, use: :name

	self.table_name  = 'newsletters'
	self.primary_key = 'id'

	validates :name,
						presence: true,
						uniqueness: false,
						allow_blank: false,
						length: { minimum: 3, maximum: 50 }

	validates :email,
						presence: true,
						uniqueness: true,
						allow_blank: false,
						length: { minimum: 3, maximum: 145 }

	validates :token,
						uniqueness: true
end
