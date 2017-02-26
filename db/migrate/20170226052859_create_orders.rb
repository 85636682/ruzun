class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :orderable_type
      t.integer :orderable_id
      t.integer :user_id
      t.integer :amount
      t.integer :status

      t.timestamps
    end
  end
end
