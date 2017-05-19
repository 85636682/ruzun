class AddDrawedToLuckyDraw < ActiveRecord::Migration[5.0]
  def change
    add_column :lucky_draws, :drawed, :boolean, default: false
  end
end
