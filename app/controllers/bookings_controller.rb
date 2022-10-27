class BookingsController < ApplicationController
  def new
    @booking = Booking.new
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
    params.require(:booking).permit(:flight_id)
  end
end
