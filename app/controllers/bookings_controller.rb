class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @game = Game.find(params[:game_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @game = Game.find(params[:game_id])
    @booking.game = @game
    @booking.user = current_user


#     if @booking

# maybe_start_date = @booking.start_date
# maybe_end_date = @booking.end_date
# range = (maybe_start_date..maybe_end_date)
# range.include?(Date.new(2012, 10, 5))
# range.include?(Date.new(2012, 11, 1))

# if range


    if @booking.save
      redirect_to game_booking_path(@game, @booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @game = Game.find(params[:game_id])
  end
  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.save(booking_params)
      redirect_to ### A REFLECHIR
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.save
    redirect_to games_path, status: :see_other ### vérifier le path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :game_id)
  end

end
