class ReviewsController < ApplicationController
  before_action :set_reviews, only: %i[ show edit update destroy ]
  before_action :set_restaurant

  def index
    @review = Review.all
  end

  def show
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
    # @review.destroy

    # respond_to do |format|
    #   format.html { redirect_to restaurants_url, notice: "Restaurant was successfully destroyed." }
    #   format.json { head :no_content }
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
