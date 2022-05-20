# frozen_string_literal: true

module MyWeather
  class ApiV1 < Grape::API
    prefix :api
    format :json
    ApiV1.rescue_from Grape::Exceptions::ValidationErrors do |e|
      error!({ errors: e.full_messages.map { |msg| msg } }, 422, 'Connection' => 'close')
    end
    version 'v1'

    mount WeatherInCity::ApiV1
  end
end
