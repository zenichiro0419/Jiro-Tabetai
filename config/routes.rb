Rails.application.routes.draw do
  resources :jiros, except: [:destroy] do
    resource :business_hours, only: [:edit, :update]
    resource :facilities, only: [:edit, :update]
    resource :menu_items, only: [:edit] do
      member do
        patch 'update_main_menu'
        patch 'update_option_menu'
      end
    end
  end
end
