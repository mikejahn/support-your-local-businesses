Rails.application.routes.draw do
  root to: 'cities#index'
  resources :cities do
    resources :businesses
  end
end
