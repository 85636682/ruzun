class AddTeamIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :team_id, :integer

    User.all.each do |user|
      team_user = TeamUser.where(user_id: user.id).take
      user.update_attributes(team_id: team_user.team_id) if team_user.present?
    end
  end
end
