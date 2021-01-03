Rails.application.routes.draw do

  get 'jiro/:id', to: 'jiro#show'
end
