Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  #users
  get "users" => "users#index"
  get "users/:id" => "users#show"
  post "users" => "users#create"
  #sessions
  get "sessions/:id" => "sessions#show"
  post "sessions" => "sessions#create"
  #clowns
  get 'clowns' => "clowns#index"
  get 'clowns/:id' => "clowns#show"
  patch 'clowns/:id' => "clowns#update"
  post 'clowns' => "clowns#create"
  delete 'clowns/:id' => "clowns#destroy"



  # Defines the root path route ("/")
  # root "posts#index"
end
