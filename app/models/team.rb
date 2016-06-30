class Team < ActiveRecord::Base
  mount_uploader :logo, TeamLogoUploader
  attr_accessor :uploader_secure_token

  belongs_to :user
  has_many :team_users
  has_many :users, :through => :team_users, :dependent => :destroy
end
