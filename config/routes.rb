Rails.application.routes.draw do
  get 'candidates/show'
  devise_for :voters
  devise_for :candidates, controllers: { registrations: "candidates/registrations" }

  resources :candidates, only: [:show]

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
