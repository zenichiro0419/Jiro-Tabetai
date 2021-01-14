Rails.application.routes.draw do
  resources :jiros, except: [:destroy] do
    resource :facilities, only: [:edit, :update]
  end
end
