Rails.application.routes.draw do
  get 'private_messages/index'
  get 'privatemessages/index'
  get 'conversations/index'
  get 'chat_rooms/index'
  mount Notifications::Engine => "/notifications"

  devise_for :users, controllers: { registrations: 'registrations'}
  devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
end

  resources :users, only: [:show, :edit, :update]

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :services do
    resources :appointments
    resources :reviews, only: [:new, :create]
  end

  resources :tasks, only: [:index, :new, :create, :edit, :update, :destroy]
  delete 'tasks/:id', to: "tasks#destroy"
  get 'tasks/:id/mark_as_done', to: 'tasks#mark_as_done', as: :mark_task
  get 'tasks/:id/add_to_checklist', to: 'tasks#add_to_checklist', as: :add_to_checklist

  resources :milestones, only: [:edit, :update]

  get "dashboard", to: "pages#dashboard"
  delete "dashboard", to: "pages#destroy"

  get "profile", to: "pages#profile"
  get "advisor_homepage", to: "pages#advisor_homepage"

  patch 'chat_rooms/:id', controller: 'chat_room', action: :patch

  resources :chat_rooms, only: [ :show, :index, :new, :create ] do
    resources :messages, only: [ :create ]
  end

  resources :conversations, only: [:index, :create] do
    resources :private_messages, only: [:index, :create]
  end
end
