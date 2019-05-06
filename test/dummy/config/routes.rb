Rails.application.routes.draw do
  resources :users
  resources :long_and_moves, only: %i(new create)
  resources :long_and_not_moves, only: %i(new create)
end
