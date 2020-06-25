Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'sessions#new'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get  '/logout' => 'sessions#destroy'

  resources :camp_counselors do
    resources :assignments, only: [:show, :index]
    resources :comments, shallow: true
  end 

  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
end
