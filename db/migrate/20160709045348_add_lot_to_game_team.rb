class AddLotToGameTeam < ActiveRecord::Migration
  def change
    add_column :game_teams, :lot, :string
  end
end
