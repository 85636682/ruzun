class User < ActiveRecord::Base
  has_secure_password

  has_one :team
  has_many :team_users
  has_many :teams, :through => :team_users, :dependent => :destroy
end
