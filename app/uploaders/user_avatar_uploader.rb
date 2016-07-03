# encoding: utf-8

class UserAvatarUploader < BaseUploader

  def default_url
    "#{Setting.upyun_upload_url}/user_default_avatar.png#{version_name}"
  end

  def extension_white_list
    %w(jpg jpeg gif png svg)
  end

end
