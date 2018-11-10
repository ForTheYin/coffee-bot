class CreateMachineActions < ActiveRecord::Migration[5.2]
  def change
    create_table :machine_actions do |t|
      t.belongs_to :machine, index: true
      t.uuid :uuid, index: true

      t.string :status, null: false, default: :queued
      t.string :action, null: false

      t.datetime :scheduled_at, null: false

      t.timestamps
    end
  end
end
