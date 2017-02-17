Rails.application.routes.draw do

  resources :articles, only: [:index]
  root 'articles#index'

  namespace :api do
    resources :articles, only: [:index, :create]
    resources :sources, only: [:index]
  end

end
