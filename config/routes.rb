Rails.application.routes.draw do
  
  get "/apl/v1/login", to: "sessions#create"
  namespace :api do
    namespace :v1 do
      resources :users    
      resources :appointments
      resources :customers
      resources :pianos
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
