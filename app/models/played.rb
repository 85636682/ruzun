class Played < ActiveRecord::Base
  belongs_to :game
  has_many :techstats
  has_one :home_team, class_name: "Team", foreign_key: home_team_id
  has_one :guest_team, class_name: "Team", foreign_key: guest_team_id
end
