class AddNumberToTeamUser < ActiveRecord::Migration
  def change
    add_column :team_users, :number, :string
  end
end
