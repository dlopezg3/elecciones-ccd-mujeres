Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :admins
  get 'candidates/show'
  devise_for :voters
  devise_for :candidates, controllers: { registrations: "candidates/registrations" }

  resources :candidacies, only: [:show, :new, :create, :edit, :update]

  namespace :votation do
    resources :sectors, only: [:index] do
      resources :candidacies, only: [:index, :show] do
        resources :votes, only: [:new, :create]
      end
    end
  end

  root to: 'pages#home'

  require "sidekiq/web"
    authenticate :user, lambda { |u| u.admin } do
      mount Sidekiq::Web => '/sidekiq'
    end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
