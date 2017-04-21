Rails.application.routes.draw do

  namespace :m do
    get 'home/index'

    resources :tickets, only: [:index, :show]
    resources :shopping_carts, only: [:index] do
      collection do
        get :add
      end
    end
    resources :users do
      collection do
        get :profile
        get :deposit
      end
    end
    resources :swiming_lessons, only: [:new, :create]
  end

  get 'home/index'

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
        resources :game_teams, only: [:index, :show]
      end
      resources :playeds, only: [] do
        resources :techstats, only: [:index]
      end
    end
  end

  namespace :admin do
    resources :products
    resources :sales_lists
    resources :admins
    resources :sessions, only: [:new, :create, :destroy]
    resources :orders, only: [:index, :show, :create]
    resources :swiming_lessons
    resources :tickets do
      collection do
        get :sell
      end
    end
    resources :games do
      member do
        get :lot
        get :lock
      end
      resources :playeds do
        resources :techstats, only: [:index, :create, :edit, :update]
      end
      resources :game_teams, only: [:index, :new, :create, :edit, :update]
    end
  end

  root "home#index"
end
