class Booking < ApplicationRecord
  enum :status, [ :pending, :accepted, :declined, :cancelled]
  belongs_to :flat
  belongs_to :user

  after_initialize :set_default_status, if: :new_record?

  validate :dates_are_available

  private

  def set_default_status
  self.status ||= "pending"
  end

  def dates_are_available
    # Skip if dates are missing
    return if start_date.blank? || end_date.blank?


    overlapping = Booking.where(flat_id: flat_id)
                        .where.not(id: id)
                        .where("start_date < ? AND end_date > ?", end_date, start_date)
    if overlapping.exists?
      errors.add(:base, "Cette cabane est déjà réservée sur ces dates.")
    end


    if user
      user_conflict = Booking.where(user_id: user.id)
                            .where.not(flat_id: flat_id)
                            .where("start_date < ? AND end_date > ?", end_date, start_date)
      if user_conflict.exists?
        errors.add(:base, "Vous avez déjà réservé une autre cabane à ces dates.")
      end
    end
  end
end
