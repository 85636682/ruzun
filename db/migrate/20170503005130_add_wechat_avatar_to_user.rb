class AddWechatAvatarToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :wechat_avatar, :string
  end
end
