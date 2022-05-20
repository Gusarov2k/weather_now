# frozen_string_literal: true

Rails.application.routes.draw do
  mount MyWeather::ApiV1 => '/'
end
