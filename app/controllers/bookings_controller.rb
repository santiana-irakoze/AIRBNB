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



# start_date ne doit pas être antérieure à aujourd'hui
# end_date ne doit pas être antérieure à start_date
# Date ne doit pas déjà être réservée

# quand réservé, marqué tous les jours de la range comme "réservée"
# quand demande de réservation, faire un each sur tous les jours de la range pour comparer avec le statut réservé ou non
# si OK, proceed, si non, message d'erreur

# ne pas oublier de require le module date 



# booking_start_date = @booking.start_date
# booking_end_date = @booking.end_date
# range = (booking_start_date..booking_end_date)



# range. each do |day|
  
# end


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
