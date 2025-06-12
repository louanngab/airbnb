class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy

  def stayed_flats
    Flat.joins(:bookings).where(bookings: { user_id: id }).distinct
  end
end
