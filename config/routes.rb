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

  resources :camps do
    resources :activities
  end 

  resources :activities do
    resources :assignments
  end 

  resources :assignments
  
  get '/auth/github/callback' => 'sessions#create'
end
