CarrierWave.configure do |config|
  config.storage = :upyun
  config.upyun_username = Setting.upyun_username
  config.upyun_password = Setting.upyun_password
  config.upyun_bucket = Setting.upyun_bucket
  config.upyun_bucket_host = Setting.upyun_upload_url
  # 不要在上传新文件的时候，删除老文件
  config.remove_previously_stored_files_after_update = false
end
