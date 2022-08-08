class Employment < ApplicationRecord
  has_many :employment_histories, dependent: :destroy
  accepts_nested_attributes_for :employment_histories, allow_destroy: true
  belongs_to :user
end
