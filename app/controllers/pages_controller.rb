class PagesController < ApplicationController
  def home
    @flats = Flat.all
    #@flat = Flat.find(params[:id])
  end

  def cabane
    @flats = Flat.all
  end

  def experiences
  end

  def services
  end
end
