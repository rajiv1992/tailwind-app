require 'rails_helper'

RSpec.describe EmploymentHistory, type: :model do
  subject { create(:employment_history)  }

  it "is not valid without a employer" do
    subject.employer = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a date_started" do
    subject.date_started = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a date_employment_ended" do
    subject.date_employment_ended = nil
    expect(subject).to_not be_valid
  end
end
