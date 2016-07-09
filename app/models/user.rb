class User < ActiveRecord::Base
  has_secure_password

  extend Enumerize  #pending 新建状态  cooking烹饪状态  finished完成状态  canceled取消
  enumerize :position,     in: [:PG, :SG, :SF, :PF, :C], default: :SF

  mount_uploader :avatar, UserAvatarUploader
  attr_accessor :uploader_secure_token

  has_one :team
  has_many :team_users
  has_many :teams, :through => :team_users, :dependent => :destroy
  has_many :techstats

  validates_uniqueness_of :mobile
end
