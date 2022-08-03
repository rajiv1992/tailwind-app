# frozen_string_literal: true

FactoryBot.define do
  factory :employment do
  end

  factory :employment_history do
    employer { Faker::Company.name }
    date_started { Faker::Date.backward }
    date_employment_ended { Faker::Date.backward }
    association :employment
  end

  factory :personal_datum do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    nick_name { Faker::Name.name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.cell_phone }
  end
end
