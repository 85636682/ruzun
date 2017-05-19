class User < ActiveRecord::Base
  has_secure_password

  extend Enumerize  #pending 新建状态  cooking烹饪状态  finished完成状态  canceled取消
  enumerize :position,     in: [:PG, :SG, :SF, :PF, :C], default: :SF

  enum sex: [:unknown, :female, :male]

  mount_uploader :avatar, UserAvatarUploader
  attr_accessor :uploader_secure_token

  has_one :my_team, class_name: "Team"
  belongs_to :team
  has_many :techstats
  has_many :shopping_carts
  has_many :orders
  has_many :students
  has_many :deposits
  has_many :user_membership_cards
  has_many :user_lockers
  has_many :lucky_draws
  has_many :coupons

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize do |user|
      user.nickname = auth.info.nickname
      user.sex = auth.info.sex
      user.wechat_avatar = auth.info.headimgurl
      user.open_id = auth.info.openid
    end
  end
end
