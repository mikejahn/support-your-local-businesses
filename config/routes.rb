Rails.application.routes.draw do
  root to: 'cities#index'
  resources :cities do
    resources :businesses
  end

get '/about', to: 'content#about'

end
