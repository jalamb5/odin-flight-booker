class FlightsController < ApplicationController
  def index
    @flights = Flight.all
  end

  def show
  end

  def new
    @flight = Flight.new
  end

  def create
    @flight = Flight.new(flight_params)
  end

  private

  def flight_params
    params.require(:flight).permit(:departure_id, :arrival_id, :departure_time, :duration)
  end
end
