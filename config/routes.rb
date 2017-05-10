Rails.application.routes.draw do

  get 'auth/wechat/callback' => 'users#omniauth_callbacks'

  namespace :m do
    get 'home/index'
    get 'home/water'

    post 'wx_pay' => 'pay#wx_pay'
    post 'wx_notify' => 'pay#wx_notify'

    resources :deposits, only: [:index, :show, :new, :create]
    resources :orders, only: [:index, :show, :create]
    resources :tickets, only: [:index, :show]
    resources :shopping_carts, only: [:index, :destroy] do
      collection do
        get :add
      end
    end
    resources :users do
      collection do
        get :profile
      end
    end
    resources :lessons, only: [:index, :show] do
      resources :students, only: [:new, :create]
    end
    resources :students, only: [:index, :show]
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
    resources :timelines
    resources :roles
    resources :users, only: [:index]
    resources :products
    resources :sales_lists
    resources :admins
    resources :sessions, only: [:new, :create, :destroy]
    resources :orders, only: [:index, :show, :create, :destroy]
    resources :order_tickets, only: [:show, :edit, :update]
    resources :lessons
    resources :students
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

    get 'dashboard/index'
    root "dashboard#index"
  end

  root "home#index"
end
