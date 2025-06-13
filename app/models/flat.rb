class Flat < ApplicationRecord
  has_many_attached :photos
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  serialize :interior_photo_urls, coder: JSON
end
