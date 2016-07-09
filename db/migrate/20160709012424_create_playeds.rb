class CreatePlayeds < ActiveRecord::Migration
  def change
    create_table :playeds do |t|
      t.integer :home_team_id
      t.integer :guest_team_id
      t.integer :game_id
      t.integer :home_team_score
      t.integer :guest_team_score
      t.datetime :start_time

      t.timestamps null: false
    end
  end
end
