class CreateOrderTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :order_tickets do |t|
      t.string :order_id

      t.timestamps
    end
  end
end
