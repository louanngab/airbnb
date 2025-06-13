class Flat < ApplicationRecord
  has_one_attached :photo
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  validates :latitude, :longitude, presence: true, numericality: true
end
