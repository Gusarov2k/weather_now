# frozen_string_literal: true

module WeatherInCity
  class ApiV1 < Grape::API
    resource :weather do
      desc 'current weather'
      # /api/:version/weather

      get do
        result = GetCurrentWeatherInCity.call
        return status 403 if result.current_weather.nil?

        status 200
        result.current_weather
      end
    end
  end
end
