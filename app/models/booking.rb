class Booking < ApplicationRecord
  belongs_to :queen
  belongs_to :user
  validates :date, presence: true
  validates :date, presence: true
  validates :status, presence: true
  validates :queen_id, presence: true
  validates :user_id, presence: true
end
