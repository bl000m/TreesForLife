Rails.application.routes.draw do
  devise_for :users
  root to: 'trees#index'
  resources :trees, except: :index do
    resources :adoptions, only: [:new, :create]
  end
  get '/instructions', to: 'pages#instructions', as: 'instructions'
end
