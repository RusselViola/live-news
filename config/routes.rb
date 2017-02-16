Rails.application.routes.draw do

  resources :articles, only: [:index]
  root 'articles#index'

  namespace :api do
    resources :articles
  end

end
