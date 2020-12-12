# frozen_string_literal: true

class VehiclesController < ApplicationController
  before_action :find_vehicle, only: :toggle_parking

  def index
    @vehicles = Vehicle.order(:id).paginate(page: params[:page])
  end

  def toggle_parking
    if @vehicle.toggle_status
      message = "Vehicle #{@vehicle.parked? ? 'parked' : 'unparked'}!"
      redirect_to_with(message, :notice)
    else
      redirect_to_with(error_message(@vehicle), :error)
    end
  end

  private

  def find_vehicle
    @vehicle = Vehicle.find(params[:vehicle_id])
  rescue
    redirect_to_with('Vehicle not found.', :error)
  end

  def redirect_to_with(message, type)
    flash[type] = message
    redirect_to vehicles_path
  end
end
