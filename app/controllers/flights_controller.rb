class FlightsController < ApplicationController
  def index
    @flights = Flight.all
  end

  def create
    @flight = Flight.new(flight_params)
    respond_with do |format|
      format.js
    end
  end

  private

  def flight_params
    params.require(:flight).permit(:aircraft_type)
  end
end
