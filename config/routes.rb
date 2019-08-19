Rails.application.routes.draw do
  root to: "static_pages#index"

  mount RailsAdmin::Engine => "/admin", as: "rails_admin"
  
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
  }
  
  resources :carts, only: %i(index)
end
