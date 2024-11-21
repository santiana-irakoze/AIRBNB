class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @game = Game.find(params[:game_id])
    @review.game = @game
    if @review.save
      redirect_to game_path(@game)
    else
      render 'games/show', status: :unprocessable_entity
    end
  end
  private

  def review_params
    params.require(:review).permit(:rating, :title, :content)
  end
end
