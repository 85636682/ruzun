# IMAGE_UPLOADER_ALLOW_IMAGE_VERSION_NAMES = %(80x80 300x300 500x500 800x800 320xAuto 520xAuto 820xAuto)
require 'carrierwave/processing/mini_magick'
class BaseUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  def store_dir
    model.class.to_s.underscore
  end

  def default_url
    "#{Setting.upyun_upload_url}/anonymousUser.jpg#{version_name}"
  end

  def extension_white_list
    %w(jpg jpeg png gif)
  end
end
