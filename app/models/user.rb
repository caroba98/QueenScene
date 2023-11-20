class User < ApplicationRecord
  has_many :bookings
  has_many :queens
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :email, presence: true
end
