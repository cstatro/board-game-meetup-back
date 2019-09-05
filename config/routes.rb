Rails.application.routes.draw do
  resources :meet_up_members
  resources :user_games
  resources :users
  resources :meetups
  resources :games
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
