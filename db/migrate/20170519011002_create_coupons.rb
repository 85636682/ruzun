class CreateCoupons < ActiveRecord::Migration[5.0]
  def change
    create_table :coupons do |t|
      t.string :serial_number
      t.integer :user_id
      t.integer :ticket_id

      t.timestamps
    end
  end
end
