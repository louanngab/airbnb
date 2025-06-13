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

  def update
  @booking = Booking.find(params[:id])

  if @booking.flat.user != current_user
    redirect_to root_path, alert: "Accès interdit"
    return
  end

  if @booking.update(booking_params)
    redirect_to owner_bookings_flat_path(@booking.flat), notice: "Réservation mise à jour"
  else
    redirect_to owner_bookings_flat_path(@booking.flat), alert: "Erreur lors de la mise à jour"
  end
end

  def dashboard
    @my_bookings = current_user.bookings.includes(:flat)
    @received_bookings = Booking.joins(:flat).where(flats: { user_id: current_user.id }).includes(:user, :flat)
  end

  def accept
    authorize_owner!
    @booking.update(status: :accepted)
    redirect_to dashboard_bookings_path, notice: "Réservation acceptée."
  end

    def rejected
    authorize_owner!
    @booking.update(status: :rejected)
    redirect_to dashboard_bookings_path, alert: "Réservation refusée."
  end
  
def cancel
  @booking = Booking.find(params[:id])
  if @booking.user == current_user && @booking.pending? && @booking.start_date > 48.hours.from_now.to_date
    @booking.update(status: :cancelled)
    redirect_to dashboard_bookings_path, notice: "Réservation annulée avec succès."
  else
    redirect_to dashboard_bookings_path, alert: "Impossible d'annuler cette réservation."
  end
end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def authorize_owner!
    unless @booking.flat.user == current_user
      redirect_to root_path, alert: "Action non autorisée."
    end
  end
end
