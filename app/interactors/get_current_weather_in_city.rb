# frozen_string_literal: true

class GetCurrentWeatherInCity
  include Interactor

  def call
    context.current_weather = if Rails.cache.read(:current_weather_in_maimi).nil?
                                Rails.cache.fetch(:current_weather_in_maimi, expires_in: 30.minutes) do
                                  connect = Faraday.new(
                                    url: 'http://dataservice.accuweather.com',
                                    headers: { 'Content-Type' => 'application/json', 'charset' => 'UTF-8' }
                                  )

                                  response = connect.get('currentconditions/v1/347936') do |req|
                                    req.params['apikey'] = 'AAjG3iOchG6Zbi9n5DKbYGQhK2lg1JWX'
                                  end

                                  JSON.parse(response.body, symbolize_names: true).first if response.status == 200
                                end
                              else
                                Rails.cache.read(:current_weather_in_maimi)
                              end
  end
end
