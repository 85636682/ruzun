class ChangePriceForProduct < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :price, 'float USING CAST(price AS float)'
    change_column :tickets, :price, 'float USING CAST(price AS float)'
  end
end
