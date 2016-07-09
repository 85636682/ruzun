Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'wechat/sign_package'
      get 'wechat/get_team_logo_from_wechat'
      get 'wechat/get_user_avatar_from_wechat'

      resources :users, only: [:create, :show, :update]
      resources :teams, only: [:index, :create, :show, :update]
      resources :team_users, only: [:create, :destroy]
      resources :sessions, only: [:create]
      resources :games, only: [:index, :show]
    end
  end

  namespace :admin do
    resources :games
    resources :game_teams, only: [:new, :create]
  end
end
