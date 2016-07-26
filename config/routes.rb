Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'wechat/sign_package'
      get 'wechat/get_team_logo_from_wechat'
      get 'wechat/get_user_avatar_from_wechat'

      resources :users, only: [:create, :show, :update] do
        collection do
          get :auth
          get :sundry
        end
      end
      resources :teams, only: [:index, :create, :show, :update] do
        member do
          get :playeds
        end
      end
      resources :team_users, only: [:create] do
        collection do
          put    :update_member
          delete :quit
          delete :kick
        end
      end
      resources :sessions, only: [:create]
      resources :games, only: [:index, :show] do
        resources :playeds, only: [:index]
      end
      resources :playeds, only: [] do
        resources :techstats, only: [:index]
      end
    end
  end

  namespace :admin do
    resources :games do
      member do
        get :lot
        get :lock
      end
      resources :playeds do
        resources :techstats, only: [:index, :create, :edit, :update]
      end
    end
    resources :game_teams, only: [:new, :create]
  end
end
