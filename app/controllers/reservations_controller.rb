class ReservationsController < ApplicationController
  def index
    @reservations = Reservation.all.order(created_at: :desc)
  end

  def show
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.create(reservation_params)
    @movie = Movie.find(params[:id])
    @reservation.movies <<  @movie
    redirect_to reservations_path
  end

  def destroy
  end

  private

  def reservation_params
    params.require(:reservation).permit(:name, :cedula, :celular, :email)
  end
  
end
