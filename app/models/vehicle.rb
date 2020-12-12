class Vehicle < ApplicationRecord
  def toggle_status
    parked ? unpark : park
    toggle!(:parked)
  end

  def method_name

  end
end
