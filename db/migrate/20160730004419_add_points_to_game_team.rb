class AddPointsToGameTeam < ActiveRecord::Migration
  def change
    add_column :game_teams, :points,           :integer, default: 0
    add_column :game_teams, :wins,             :integer, default: 0
    add_column :game_teams, :losses,           :integer, default: 0
    add_column :game_teams, :score_difference, :integer, default: 0
  end
end
