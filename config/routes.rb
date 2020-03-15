Rails.application.routes.draw do
  resources :cities do
    resources :businesses
  end
end
