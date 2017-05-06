class AddTradeNoToStudent < ActiveRecord::Migration[5.0]
  def change
    add_column :students, :trade_no, :string
  end
end
