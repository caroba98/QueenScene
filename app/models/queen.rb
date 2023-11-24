class Queen < ApplicationRecord
  SKILLSET = ["singing", "dancing", "lipsync", "comedy", "looks"]
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :location, presence: true
  validates :price, presence: true
  include PgSearch::Model
  pg_search_scope :search_by_name_and_location,
  against: [ :name, :location ],
  using: {
  tsearch: { prefix: true }
  }
  # validates :skills, inclusion: { in: SKILLSET }
end
