class ReviewsController < ApplicationController
  def new
    @game = Game.find(params[:game_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.game = @game
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end
  private

  def review_params
    params.require(:review).permit(:rating, :title, :content)
  end
end
