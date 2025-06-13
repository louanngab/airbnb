class FlatsController < ApplicationController
  def index
    if params[:query].present?
      query = "%#{params[:query]}%"
      @flats = Flat.where("name ILIKE ? OR address ILIKE ?", query, query)
    else
      @flats = Flat.all
    end
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to @flat, notice: "Flat was successfully created."
    else
      render :new
    end
  end


  def show
    @flat = Flat.find(params[:id])
    @booking = Booking.new
    @unavailable_dates = @flat.bookings.where(paid: true).flat_map do |booking|
    (booking.start_date..booking.end_date).to_a
  end
end

  def new
    @flat = Flat.new
  end

  def experiences
    @reviews = Review.includes(:user, :flat).order(created_at: :desc)
  end

def owner_bookings
  @flat = Flat.find(params[:id])
  if @flat.user == current_user
    @bookings = @flat.bookings.includes(:user)
  else
    redirect_to root_path, alert: "Accès non autorisé"
  end
end

    private

  def flat_params
    params.require(:flat).permit(:name, :address, :price, :description)
  end
end
