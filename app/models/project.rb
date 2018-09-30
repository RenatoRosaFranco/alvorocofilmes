# frozen_string_literal: true
class Project < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged

  belongs_to :user

  validates :name,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 30 }

  validates :description,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 145 }

  validates :tags,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 70 }
end
