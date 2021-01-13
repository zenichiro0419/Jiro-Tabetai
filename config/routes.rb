Rails.application.routes.draw do
  resources :jiros, only: [:show, :new]
end
