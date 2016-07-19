json.user do
  json.(current_user, :id, :name, :birthday, :height, :weight, :position, :avatar, :province, :city, :district, :created_at, :updated_at)
  json.avatar current_user.avatar.url("300x300")
end
