# frozen_string_literal: true

class User < ApplicationRecord
  has_many  :orders
  validates :email,
            :first_name,
            :last_name,
            :address,
            :role,
            presence: true

  has_secure_password
  enum role: %w[default admin]
end
