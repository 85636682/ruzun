class ChangeRateFromAwards < ActiveRecord::Migration[5.0]
  def change
    change_column :awards, :rate, :float
  end
end
