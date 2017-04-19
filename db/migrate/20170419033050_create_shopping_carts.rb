class CreateShoppingCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :shopping_carts do |t|
      t.integer :ticket_id
      t.integer :user_id
      t.integer :amount

      t.timestamps
    end
  end
end
