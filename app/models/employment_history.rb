class EmploymentHistory < ApplicationRecord
  belongs_to :employment
  validates :employer, :date_started, :date_employment_ended, presence: true
end
