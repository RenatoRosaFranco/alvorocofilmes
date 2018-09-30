# frozen_string_literal: true
class Post < ApplicationRecord
	extend FriendlyId
	friendly_id :title, use: :slugged

  belongs_to :user
  has_and_belongs_to_many :categories

  validates :title,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 50 }

  validates :description,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 145 }

  validates :content,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 15_000 }

  validates :status,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false

  validates :tags,
  					presence: true,
  					uniqueness: false,
  					allow_blank: false,
  					length: { minimum: 3, maximum: 70 }
end
