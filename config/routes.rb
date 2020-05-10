Rails.application.routes.draw do
  # get 'stories/index'
  # get '/stories', to: 'stories#index' 

  resources :stories do
    collection do
      post :confirm
    end
  end
end
