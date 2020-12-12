# frozen_string_literal: true

class User < ApplicationRecord
  CUSTOMER = 'Customer'
  ADMIN = 'Admin'
  SUPER_ADMIN = 'Super Admin'
  ROLES = [CUSTOMER, ADMIN, SUPER_ADMIN].freeze

  attr_accessor :role

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Callbacks
  before_validation :assign_type, on: %i[create update]

  def assign_type
    return true if type.present?

    self.type = role.present? ? role : CUSTOMER
  end
end
