# frozen_string_literal: true

class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, StandardError do |ex|
    error(ex)
  end

  def error(err)
    @error = err
    ErrorHandling::Base.debug_message(err)
    render 'home/error'
  end
end
