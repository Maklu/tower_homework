Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :activities, only: [:index]

  resources :create_todos, only: [:create]

  resources :complete_todos, only: [:create]

  resources :reopen_todos, only: [:create]

  resources :projects, only: [:show]

  namespace :api do
    namespace :v1 do
      resources :create_todos, only: [:create]
      resources :complete_todos, only: [:create]
      resources :create_teams, only: [:create]
    end
  end

  get 'sign_in', to: 'sign_in#new'
  post 'sign_in', to: 'sign_in#create'

  root 'home#index'
end
