class GamesController < ApplicationController

  def index
    @games = Game.all

    @search = Game.all
    if params[:query].present?
      sql_subquery = "name ILIKE :query OR description ILIKE :query OR category ILIKE :query"
      @search = @search.where(sql_subquery, query: "%#{params[:query]}%")
    end
  end

  def show
    @game = Game.find(params[:id])
    @review = Review.new
    
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    @game.user = current_user
    if @game.save
      redirect_to game_path(@game)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
      redirect_to game_path(@game)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def game_params
    values = params.require(:game).permit(:name, :description, :location, :price, :category, :user_id, :min_number_of_players, :max_number_of_players, :playing_time, photo: [])
    values.delete(:photo) if values[:photo].blank?
    return values
  end
end
