Rails.application.routes.draw do
  
  post "/api/v1/login", to: "api/v1/sessions#create"
  delete "/api/v1/delete", to: "api/v1/sessions#destroy"
  get "/api/v1/get_current_user", to: "api/v1/sessions#get_current_user"
  get "/api/v1/users/:id/customers/:id/pianos", to: "api/v1/pianos#show"
  get "/api/v1/users/:id/pianos", to: "api/v1/pianos#index"
  get "/api/v1/users/:id/appointments", to: "api/v1/appointments#index"
  post "/api/v1/signup", to: "api/v1/users#create" 

  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :create, :update, :destroy] do
        resources :customers, only: [:index, :create, :update, :destroy] do
          resources :appointments
          resources :pianos, only: [:create, :update, :destroy]
        end
      end 
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
