# frozen_string_literal: true

class ParkingsController < ApplicationController
  def index
    @parkings = Parking.order(:id).paginate(page: params[:page]).includes(:vehicle, :parking_spot)
  end
end
