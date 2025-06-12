class BookingsController < ApplicationController
  before_action :authenticate_user!

  def create
  @flat = Flat.find(params[:flat_id])
  @booking = Booking.new(booking_params)
  @booking.flat = @flat
  @booking.user = current_user

  if @booking.save
    redirect_to flat_path(@flat), notice: "Réservation confirmée !", flash: { booking_id: @booking.id }
  else
    @unavailable_dates = @flat.bookings.where(paid: true).flat_map { |booking| (booking.start_date..booking.end_date).to_a }
    render "flats/show", status: :unprocessable_entity
  end
end

def confirmation
  @booking = Booking.find(params[:id])
end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
