# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PersonalDatum, type: :model do
  subject { create(:personal_datum) }

  it 'is not valid without a first_name' do
    subject.first_name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a last_name' do
    subject.last_name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a phone' do
    subject.phone = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid if first name is longer than 25' do
    subject.first_name = 'a' * 26
    expect(subject).to_not be_valid
  end

  it 'is not valid if last name is longer than 50' do
    subject.last_name = 'a' * 51
    expect(subject).to_not be_valid
  end
end
