Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:index] do 
    resources :user_alerts, only: [:index, :show, :create, :update, :destroy]
  end
  post "price", to: "price#price_callback"
end
