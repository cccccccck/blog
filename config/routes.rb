Rails.application.routes.draw do
  
  resources :posts
  root 'posts#index'
  namespace :admin do
    get :sign_up, to: 'users#new'
    post :sign_up, to: 'users#create'
    
    get :sign_in, to: 'sessions#new'
    post :sign_in, to: 'sessions#create'
    
    get :sign_out, to: 'sessions#destroy'
    
   
    resources :posts
    root to: 'posts#index'
  end
end
