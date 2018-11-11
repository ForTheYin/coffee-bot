class CreatePhoneDevices < ActiveRecord::Migration[5.2]
  def change
    create_table :phone_devices do |t|
      t.string :status, null: false, default: :inactive

      t.string :account_sid, null: false
      t.string :auth_token, null: false
      t.string :from_number, null: false

      t.timestamps
    end
  end
end
