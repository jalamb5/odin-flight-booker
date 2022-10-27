class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    # params[:num_passengers].times { @booking.passengers.build }
    @num_passengers = params[:num_passengers]
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to new_booking_path
    else
      render 'new'
    end
  end

  def show; end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :passenger_id, passengers_attributes: %i[id name email])
  end
end
