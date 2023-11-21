class Queen < ApplicationRecord
  SKILLSET = ["singing", "dancing", "lipsync", "comedy", "looks"]
  has_many :bookings
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :location, presence: true
  validates :price, presence: true
  validates :skills, inclusion: { in: SKILLSET }
end
