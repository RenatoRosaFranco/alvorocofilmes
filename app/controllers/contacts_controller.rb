# frozen_string_literal: true
class ContactsController < ApplicationController
	
	def create
		contact = Contact.new contact_params
		if ( contact.valid? ) then
		 	 contact.sendEmail
		 	 redirect_to root_path, 
		 	 	notice: "#{contact.name} E-mail enviado com sucesso."
		else
			 redirect_to root_path, 
			 	notice: 'Falha ao enviar mensagem, tente novamente.'
		end
	end

	private
		def contact_params
			params.require(:contact)
				.permit(:name, :phone, :email, :subject, :message)
		end
end
