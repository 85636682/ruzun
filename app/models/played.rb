class Played < ActiveRecord::Base
  belongs_to :game
  has_many :techstats
  has_one :home_team, class_name: "Team", primary_key: "home_team_id", foreign_key: "id"
  has_one :guest_team, class_name: "Team", primary_key: "guest_team_id", foreign_key: "id"
end
