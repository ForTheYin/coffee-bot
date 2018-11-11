class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.belongs_to :user, index: true, null: false

      t.timestamps
    end
  end
end
