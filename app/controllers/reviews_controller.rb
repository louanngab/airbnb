class ReviewsController < ApplicationController
  before_action :set_review, only: [:edit, :update, :destroy]
  before_action :set_flat, only: [:create, :edit, :update, :destroy]

  def create
    @review = @flat.reviews.build(review_params)
    @review.user = current_user

    if @review.save
      redirect_to flat_path(@flat), notice: "Avis ajouté avec succès."
    else
      @reviews = @flat.reviews.order(created_at: :desc)
      @booking = Booking.new
      render "flats/show", status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @review.update(review_params)
      redirect_to flat_path(@flat), notice: "Avis modifié avec succès."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @review.destroy
    redirect_to flat_path(@flat), notice: "Avis supprimé."
  end

  private

  def set_flat
    if params[:flat_id]
      @flat = Flat.find(params[:flat_id])
    else
      @flat = @review.flat
    end
  end

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating, :title)
  end
end
