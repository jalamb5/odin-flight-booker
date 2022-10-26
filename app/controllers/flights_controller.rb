class FlightsController < ApplicationController
  before_action :set_airport_options

  def index
    @flights = Flight.all
    @searched_flights = Flight.where(departure_id: params[:departure_id], arrival_id: params[:arrival_id])
  end

  def show; end

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

  def set_airport_options
    @airport_options = Airport.all.map { |a| [a.code, a.id] }
  end
end
