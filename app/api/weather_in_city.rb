# frozen_string_literal: true

module WeatherInCity
  class ApiV1 < Grape::API
    resource :weather do
      desc 'current weather'
      # /api/:version/weather

      get do
        binding.pry
        # all = Organization.all.order(:short_name)
        # present all, with: Entities::ShortOrg
      end
    end
  end
end
