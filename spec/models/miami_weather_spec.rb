# frozen_string_literal: true

require 'rails_helper'

RSpec.describe MiamiWeather, type: :model do
  subject(:weather) { build(:miami_weather) }

  describe 'validations' do
    context 'when true' do
      it { is_expected.to validate_presence_of(:request_time) }
      it { is_expected.to validate_presence_of(:request_time_unix) }

      it { is_expected.to validate_presence_of(:temperature_by_f) }
      it { is_expected.to validate_presence_of(:temperature_by_c) }
    end
  end
end
