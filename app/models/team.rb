class Team < ActiveRecord::Base
  mount_uploader :logo, TeamLogoUploader
  attr_accessor :uploader_secure_token

  belongs_to :user
  has_many :users

  has_many :game_teams
  has_many :games, :through => :game_teams, :dependent => :destroy

end
