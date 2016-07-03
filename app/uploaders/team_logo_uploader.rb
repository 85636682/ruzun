# encoding: utf-8

class TeamLogoUploader < BaseUploader

  def default_url
    "#{Setting.upyun_upload_url}/team_default_logo.png#{version_name}"
  end

  def extension_white_list
    %w(jpg jpeg gif png svg)
  end

end
