class CreateGameTeams < ActiveRecord::Migration
  def change
    create_table :game_teams do |t|
      t.integer :game_id
      t.integer :team_id
      t.boolean :confirmed
      t.string  :lot
      t.integer :points,            default: 0
      t.integer :wins,              default: 0
      t.integer :losses,            default: 0
      t.integer :score_difference,  default: 0

      t.timestamps null: false
    end
  end
end
