class CreateUserPreferences < ActiveRecord::Migration[5.2]
  def change
    create_table :user_preferences do |t|
      t.belongs_to :admin_user, index: true, null: false
      t.belongs_to :audio_device

      t.timestamps
    end
  end
end
