# frozen_string_literal: true

class ParkingSpotsController < ApplicationController
  def index
    @parking_spots = ParkingSpot.all.paginate(page: params[:page])
  end
end
