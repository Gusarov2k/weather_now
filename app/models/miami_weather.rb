# frozen_string_literal: true

class MiamiWeather < ApplicationRecord
  validates :request_time, presence: true
  validates :request_time_unix, presence: true
  validates :temperature_by_f, presence: true
  validates :temperature_by_c, presence: true
end
