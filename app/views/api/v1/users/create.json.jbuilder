json.user do
  json.(@user, :id, :mobile, :name, :birthday, :height, :weight, :position, :avatar,
               :province, :city, :district, :created_at, :updated_at)
  json.token @jwt
end
