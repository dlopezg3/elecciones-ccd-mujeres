Rails.application.routes.draw do
  devise_for :voters
  devise_for :candidates, controllers: { registrations: "candidates/registrations" }
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
