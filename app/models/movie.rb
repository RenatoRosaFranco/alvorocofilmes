# frozen_string_literal: true
class Movie < ApplicationRecord
	extend FriendlyId
	friendly_id :name, use: :slugged

	self.table_name  = 'movies'
	self.primary_key = 'id'

  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 30 }

  validates :description,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 5_000 }

  validates :tags,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 70 }
end
