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

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to game_path(@review.game)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :title, :content, :game_id)
  end
end
