# frozen_string_literal: true
module ApplicationHelper
	def has_errors?(record)
		render partial: 'has-errors', locals: { record: record }
	end
end
