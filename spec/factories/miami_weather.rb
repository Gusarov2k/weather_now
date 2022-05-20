# frozen_string_literal: true

FactoryBot.define do
  factory :miami_weather do

    request_time { Faker::Date.between(from: Time.now, to: Time.now + 1.hour) }
    title { Faker::Name.unique.name }
  end
end
