class CreateMachineStates < ActiveRecord::Migration[5.2]
  def change
    create_table :machine_states do |t|
      t.belongs_to :machine, index: true, null: false
      t.string :brew_button
      t.string :strength_button

      t.timestamps
    end
  end
end
