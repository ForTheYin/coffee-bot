class CreatePhones < ActiveRecord::Migration[5.2]
  def change
    create_table :phones do |t|
      t.belongs_to :admin_user, null: false

      t.string :status, null: false, default: :inactive
      t.string :number, null: false

      t.timestamps
    end
  end
end
