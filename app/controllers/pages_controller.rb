class PagesController < ApplicationController
  def home
    @flats = Flat.all
    #@flat = Flat.find(params[:id])
  end

  def cabane
    if params[:query].present?
      @flats = Flat.where("unaccent(name) ILIKE unaccent(?)", "%#{params[:query]}%")
    else
      @flats = Flat.all
    end
  end


  def experiences
    @reviews = Review.includes(:user, :flat).order(created_at: :desc)
  end

  def services
  end
end
