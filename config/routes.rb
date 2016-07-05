Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'wechat/sign_package'
      
      resources :users, only: [:create, :show, :update]
      resources :teams, only: [:index, :create, :show, :update]
      resources :team_users, only: [:create, :destroy]
      resources :sessions, only: [:create]
    end
  end
end
