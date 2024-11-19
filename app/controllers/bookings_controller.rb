class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    if @booking.save
      redirect_to ### A REFLECHIR
    else
      render :new, status: :unprocessable_entity
    end
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
