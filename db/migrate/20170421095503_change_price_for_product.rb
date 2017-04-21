class ChangePriceForProduct < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :price, :decimal
    change_column :tickets, :price, :decimal
  end
end
