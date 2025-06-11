class FlatsController < ApplicationController
  def index
    if params[:query].present?
      query = "%#{params[:query]}%"
      @flats = Flat.where("name ILIKE ? OR address ILIKE ?", query, query)
    else
      @flats = Flat.all
    end
  end


  def show
    @flat = Flat.find(params[:id])
  end

  def new
    @flat = Flat.new
  end
end
