class User < ActiveRecord::Base
  has_secure_password

  mount_uploader :logo, UserAvatarUploader
  attr_accessor :uploader_secure_token

  has_one :team
  has_many :team_users
  has_many :teams, :through => :team_users, :dependent => :destroy
end
