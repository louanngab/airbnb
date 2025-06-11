class Host::FlatsController < ApplicationController
  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(flat_params)
    if @flat.save
      redirect_to flat_path(@flat), notice: "Cabane ajoutée avec succès."
    else
      render :new
    end
  end

  private

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :rating, :photo)
  end
end
