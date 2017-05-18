class CreateLockers < ActiveRecord::Migration[5.0]
  def change
    create_table :lockers do |t|
      t.string :serial_number
      t.integer :state

      t.timestamps
    end
  end
end
