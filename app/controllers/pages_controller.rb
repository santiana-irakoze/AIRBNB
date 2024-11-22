class PagesController < ApplicationController
  def home
    @games = Game.all

    @search = Game.all
      if params[:query].present?
        sql_subquery = "name ILIKE :query OR description ILIKE :query OR category ILIKE :query"
        @search = @search.where(sql_subquery, query: "%#{params[:query]}%")
      end

  end
end
