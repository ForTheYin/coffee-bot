class CreateMachineTemperatures < ActiveRecord::Migration[5.2]
  def change
    create_table :machine_temperatures do |t|
      t.belongs_to :machine_state, index: true, null: false
      t.numeric :degree, null: false, precision: 8, scale: 5

      t.timestamps
    end
  end
end
