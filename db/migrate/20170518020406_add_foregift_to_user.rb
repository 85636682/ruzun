class AddForegiftToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :foregift, :integer, default: 0
  end
end
