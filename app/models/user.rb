class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_many :bookings
         has_many :queens
         validates :name, presence: true
         validates :name, uniqueness: true
         validates :address, presence: true
         validates :phone, presence: true
         validates :email, presence: true
end
