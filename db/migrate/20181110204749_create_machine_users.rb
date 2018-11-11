class CreateMachineUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :machine_users do |t|
      t.belongs_to :machine, index: true, null: false
      t.belongs_to :admin_user, index: true, null: false

      t.timestamps
    end
  end
end
