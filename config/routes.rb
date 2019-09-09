Rails.application.routes.draw do
  get "/games/:name", to: "games#show_by_name" 
  delete "/user_games/:user_id/:game_id", to: "user_games#destroy_game_copy"
  get "/user_games/:user_id", to: "user_games#get_user_games"
  
  resources :meet_up_members
  resources :user_games
  resources :users
  resources :meetups
  resources :games

  post '/login', to: "auth#login"
  get '/autologin', to: "auth#autologin"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
