Rails.application.routes.draw do

  get 'auth/wechat/callback' => 'users#omniauth_callbacks'

  namespace :m do
    get 'home/index'
    get 'home/water'

    get 'fairy_coins_pay' => 'pay#fairy_coins_pay'
    post 'wx_pay' => 'pay#wx_pay'
    post 'wx_notify' => 'pay#wx_notify'

    resources :coupons, only: [:new, :create]
    resources :awards, only: [:index, :show]
    resources :lucky_draws, only: [:index, :create] do
      collection do
        get :draw
        get :list
      end
    end
    resources :user_lockers, only: [:new, :create]
    resources :membership_cards, only: [:index, :show, :new]
    resources :user_membership_cards, only: [:index, :show, :create] do
      member do
        get :check
        post :checkin
      end
    end
    resources :deposits, only: [:index, :show, :new, :create]
    resources :orders, only: [:index, :show, :create]
    resources :order_tickets, only: [] do
      member do
        get :check
        post :checkin
      end
    end
    resources :tickets, only: [:index, :show]
    resources :shopping_carts, only: [:index, :destroy] do
      collection do
        get :add
      end
    end
    resources :users do
      collection do
        get :profile
        get :foregift
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
    resources :coupons
    resources :awards
    resources :user_lockers, only: [:index] do
      member do
        get :back
      end
    end
    resources :lockers
    resources :membership_cards do
      resources :user_membership_cards
    end
    resources :timelines
    resources :roles
    resources :users, only: [:index]
    resources :products
    resources :sales_lists
    resources :admins
    resources :sessions, only: [:new, :create, :destroy]
    resources :orders, only: [:index, :show, :create, :destroy]
    resources :order_tickets, only: [:show, :edit, :update]
    resources :lessons do
      resources :students, only: [:new, :create, :update]
    end
    resources :students, only: [:index, :show, :edit, :destroy]
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
