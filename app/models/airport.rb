class Airport < ApplicationRecord
  def new
    @airport = Airport.new
  end

  def create
    @airport = Airport.new(airport_params)
  end

  private

  def airport_params
    params.require(:airport).permit(:city, :code)
  end
end
