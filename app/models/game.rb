class Game < ActiveRecord::Base
  include MarkdownConstitution

  scope :without_constitution,   -> { select(column_name - ['constitution']) }

  mount_uploader :logo, TeamLogoUploader
  attr_accessor :uploader_secure_token

  has_many :game_teams
  has_many :teams, :through => :game_teams, :dependent => :destroy
end
