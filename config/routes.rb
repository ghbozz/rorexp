Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :todos, only: %i(index new create edit update)
  root to: 'pages#home'
end
