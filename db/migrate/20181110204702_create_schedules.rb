class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.belongs_to :admin_user, index: true, null: false
      t.datetime :scheduled_at, null: false
      t.boolean :play_on_audio_device, default: false
      t.boolean :play_on_phone, default: false

      t.timestamps
    end
  end
end
