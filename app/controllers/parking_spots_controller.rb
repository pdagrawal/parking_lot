# frozen_string_literal: true

class ParkingSpotsController < ApplicationController
  def index
    @parking_spots = ParkingSpot.order(:id).paginate(page: params[:page])
  end
end
