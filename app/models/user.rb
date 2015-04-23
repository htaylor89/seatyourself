class User < ActiveRecord::Base
  has_secure_password
  has_many :reviews
  has_many :reservations
  has_many :restaurants, through: :reviews
  has_many :restaurants, through: :reservations
end
