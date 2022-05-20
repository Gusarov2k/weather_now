# frozen_string_literal: true

class GetCurrentWeatherInCity
  include Interactor

  def call
    connect = Faraday.new(
      url: 'http://dataservice.accuweather.com',
      headers: { 'Content-Type' => 'application/json', 'charset' => 'UTF-8' }
    )

    response = connect.get('currentconditions/v1/347936') do |req|
      req.params['apikey'] = 'XonRJZxSvWRzjuZtmFyAJIdUamXQc2Kl'
    end

    if response.status == 200
      body = Oj.load(response.body)
      binding.pry
    end
  end
end
