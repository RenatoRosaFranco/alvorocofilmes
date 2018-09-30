# frozen_string_literal: true
class User < ApplicationRecord
	self.table_name  = 'users'
	self.primary_key = 'id'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
