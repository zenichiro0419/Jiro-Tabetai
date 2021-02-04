Rails.application.routes.draw do
  devise_for :jirolians

  root 'top#index'

  # get '/mypage' => 'jirolians#mypage'
  get '/posts' => 'posts#index'

  resources :jiros, except: [:destroy] do
    resource :business_hours, only: [:edit, :update]
    resource :facilities, only: [:edit, :update]
    resource :menu_items, only: [:edit] do
      member do
        patch 'update_main_menu'
        patch 'update_option_menu'
      end
    end
    resource :posts, only: [:new, :create]
  end

  # resources :jirolians, only: [:show] do
  #   resources :posts, only: [:show]
  # end

  get '/jirolians/mypage' => 'jirolians#mypage'
  get '/jirolians/:username' => 'jirolians#show'
  get '/jirolians/:username/edit' => 'jirolians#edit'
  patch '/jirolians/:username' => 'jirolians#update'
end
