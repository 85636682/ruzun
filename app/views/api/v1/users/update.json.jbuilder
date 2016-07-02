json.user do
  json.(@user, :id, :name, :birthday, :height, :weight, :position, :province, :city, :district, :created_at, :updated_at)
  json.avatar @user.avatar.url
end
