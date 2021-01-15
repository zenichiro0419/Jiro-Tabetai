Rails.application.routes.draw do
  resources :jiros, except: [:destroy] do
    resource :business_hours, only: [:edit, :update]
    resource :facilities, only: [:edit, :update]
    resource :menus, only: [:edit, :update]
  end
end
