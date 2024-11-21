class UsersController < ApplicationController
  def dashboard
    @games = Game.where(user: current_user)
    # @bookings = Booking.where(game_id: @games.pluck(:id))
  end
end
