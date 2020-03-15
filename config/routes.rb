Rails.application.routes.draw do
  mount Notifications::Engine => "/notifications"
  devise_for :users, controllers: { registrations: 'registrations'}

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :services do
    resources :appointments
    resources :reviews, only: [:new, :create]
  end

  resources :tasks, only: [:index, :new, :create, :edit, :update, :destroy]
  patch 'tasks/:id/mark_as_done', to: 'tasks#mark_as_done', as: :mark_task
  patch 'tasks/:id/add_to_checklist', to: 'tasks#add_to_checklist', as: :add_to_checklist
  patch 'tasks/:id/mark_as_achieved', to: 'tasks#mark_as_achieved', as: :mark_milestone

  resources :milestones, only: [:index, :edit, :update]

  get "dashboard", to: "pages#dashboard"
  delete "dashboard", to: "pages#destroy"
  get "profile", to: "pages#profile"
  get "advisor_homepage", to: "pages#advisor_homepage"

end

