class PagesController < ApplicationController
  def home
    @flats = Flat.all
    #@flat = Flat.find(params[:id])
  end

  def cabane
  end

  def experiences
  end

  def services
  end
end
