class Team < ActiveRecord::Base
  belongs_to :user
  has_many :team_users
  has_many :users, :through => :team_users, :dependent => :destroy
end
