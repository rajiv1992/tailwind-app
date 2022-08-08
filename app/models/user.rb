# frozen_string_literal: true

class User < ApplicationRecord
  validates :first_name, :last_name, :email, :phone, presence: true
  validates :first_name, length: { maximum: 25 }
  validates :last_name, length: { maximum: 50 }
  has_many :employments
  has_many :employment_histories, through: :employments
end
