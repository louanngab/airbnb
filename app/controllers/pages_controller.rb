class PagesController < ApplicationController
  def home
    @flats = Flat.all
    #@flat = Flat.find(params[:id])
  end

  def cabane
    @flats = Flat.all
  end

  def experiences
    @reviews = Review.includes(:user, :flat).order(created_at: :desc)
  end

  def services
  end
end
