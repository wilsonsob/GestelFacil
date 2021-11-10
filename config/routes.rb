Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :contracts, except: :destroy do
    resources :commissions, only: %i[create]
    resources :terms, only: %i[new create]
  end
  resources :terms, only: %i[edit update] do
    resources :items, only: %i[new create]
    resources :invoices, only: %i[new create]
  end
  resources :items, only: %i[edit update]
  resources :terms, only: %i[new create]
  resources :invoices, only: %i[index show]
  get '/analysis', to: 'checks#analysis'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
