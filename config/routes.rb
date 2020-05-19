Rails.application.routes.draw do

  get 'sessions/new'

  # get 'stories/index'
  # get '/stories', to: 'stories#index' 

  resources :stories do
    collection do
      post :confirm
    end
  end

  namespace :admin do
    resources :users
  end

  resources :parts do
    collection do
      post :confirm
    end
  end
  
  resources :sessions, only:[:new, :create, :destroy]
  resources :users, only: [:new, :create, :show, :edit, :update, :destroy]
end
