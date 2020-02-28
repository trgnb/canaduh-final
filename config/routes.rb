Rails.application.routes.draw do
  mount Notifications::Engine => "/notifications"
  devise_for :users, controllers: { registrations: 'registrations'}

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :services do
    resources :appointments
    resources :reviews, only: [:new, :create]
  end

  get "dashboard", to: "pages#dashboard"
  delete "dashboard", to: "pages#destroy"
  get "profile", to: "pages#profile"

end

