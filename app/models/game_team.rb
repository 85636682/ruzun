class GameTeam < ActiveRecord::Base
  belongs_to :game
  belongs_to :team

  validates_uniqueness_of :game_id, :scope => :team_id
end
