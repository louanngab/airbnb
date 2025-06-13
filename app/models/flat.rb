class Flat < ApplicationRecord
  has_many_attached :photos
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  belongs_to :user
  serialize :interior_photo_urls, coder: JSON
end
