Rails.application.routes.draw do
  resources :sonniks
  get "home/index"

  resources :articles do
    post :like, on: :member
  end


  resources :likes
  resources :tags
  resources :product_cards
  resources :articles
  get "up" => "rails/health#show", as: :rails_health_check

  root "home#index"
end
