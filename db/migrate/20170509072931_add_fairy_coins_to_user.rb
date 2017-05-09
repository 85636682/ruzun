class AddFairyCoinsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fairy_coins, :integer
  end
end
