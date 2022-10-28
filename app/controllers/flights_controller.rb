class FlightsController < ApplicationController
  before_action :set_airport_options, :set_date_options

  def index
    @flights = Flight.all
    @searched_flights = Flight.where(
      departure_id: params[:departure_id],
      arrival_id: params[:arrival_id]
    )
    @num_passengers = params[:num_passengers]

    respond_to do |format|
      format.html
      format.xml { render :xml => @flights }
      format.json { render :json => @flights }
    end
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

  def set_date_options
    @date_options = Flight.all.map { |f| [f.departure_time.strftime('%m/%d/%Y'), f.id] }
  end
end
