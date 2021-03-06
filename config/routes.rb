Rails.application.routes.draw do
  mount API::Base, at: "/"
  resources :tips
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "resorts#index"

  resources :resorts do 
    resources :tips 
  end

  resources :tips do
    put :vote
  end

  get "/:page" => "static#show"

end
