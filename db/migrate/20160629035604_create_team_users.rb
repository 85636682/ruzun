class CreateTeamUsers < ActiveRecord::Migration
  def change
    create_table :team_users do |t|
      t.integer :team_id
      t.integer :user_id
      t.boolean :examined, default: false
      t.string :number

      t.timestamps null: false
    end
  end
end
