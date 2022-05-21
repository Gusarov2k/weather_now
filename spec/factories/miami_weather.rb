# frozen_string_literal: true

FactoryBot.define do
  factory :miami_weather do
    request_time { Faker::Date.between(from: Time.now, to: Time.now + 1.hour) }
    request_time_unix { Time.now.to_i }
    icon_phrase { Faker::Name.unique.name }
    temperature_by_f { Faker::Number.decimal(l_digits: 2) }
    temperature_by_c { Faker::Number.decimal(l_digits: 2) }
  end
end
