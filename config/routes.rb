Rails.application.routes.draw do
  root to: 'toppages#index'
  get '/new', to: 'memos#new'
  post"/create", to:"memos#create"
  delete "/memos/:id", to:"memos#destroy"
  get"/memos/:id/edit", to:"memos#edit"
  patch"/memos/:id", to:"memos#update"
  
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:show, :new, :create]
end
