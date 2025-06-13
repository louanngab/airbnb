class Flat < ApplicationRecord
  has_one_attached :photo
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  belongs_to :user
end
