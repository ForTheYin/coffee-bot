class CreateAudioDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :audio_devices do |t|
      t.string :status, null: false, default: :inactive

      t.string :name
      t.string :ip, null: false
      t.integer :port, null: false
      t.string :app_key, null: false

      t.integer :volume, null: false, default: 0

      t.timestamps
    end
  end
end
