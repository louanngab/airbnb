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
  end

  def new
    @flat = Flat.new
  end

  def experiences
    @reviews = Review.includes(:user, :flat).order(created_at: :desc)
  end


    private

  def flat_params
    params.require(:flat).permit(:name, :address, :price, :description)
  end
end
