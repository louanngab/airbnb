class ReviewsController < ApplicationController
  before_action :set_flat, only: [:edit, :update, :destroy]
  before_action :set_review, only: [:edit, :update, :destroy, :show]

  def create
    @flat = Flat.find(review_params[:flat_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.flat = @flat
      if @review.save
        redirect_to pages_experiences_path, notice: "Review posted!"
      else
        @reviews = Review.includes(:user, :flat).order(created_at: :desc)
        render "pages/experiences", status: :unprocessable_entity
      end
  end

  def show
    @review = Review.find(params[:id])
  end



  def edit; end

  def update
    if @review.update(review_params)
      redirect_to pages_experiences_path, notice: "Review updated!"
    else
      render :edit, status: :unprocessable_entity
    end
  end


  def destroy
    @review.destroy
    redirect_to pages_experiences_path, notice: "Review deleted!"
  end

  def index
    @reviews = Review.includes(:user, :flat).order(created_at: :desc)
  end

  private

  def set_flat
    @review = Review.find(params[:id])
    @flat = @review.flat
  end


  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating, :flat_id)
  end
end
