class User < ActiveRecord::Base
  has_secure_password

  extend Enumerize  #pending 新建状态  cooking烹饪状态  finished完成状态  canceled取消
  enumerize :position,     in: [:PG, :SG, :SF, :PF, :C], default: :SF

  mount_uploader :avatar, UserAvatarUploader
  attr_accessor :uploader_secure_token

  has_one :my_team, class_name: "Team"
  belongs_to :team
  has_many :techstats

  validates_uniqueness_of :mobile
end
