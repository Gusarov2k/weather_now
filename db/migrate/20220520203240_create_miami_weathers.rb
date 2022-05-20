# frozen_string_literal: true

class CreateMiamiWeathers < ActiveRecord::Migration[6.1]
  def change
    create_table :miami_weathers do |t|
      t.timestamp :request_time, null: false
      t.integer :request_time_unix, null: false
      t.string :icon_phrase
      t.float :temperature_by_f, null: false
      t.float :temperature_by_c, null: false

      t.timestamps
    end
  end
end
