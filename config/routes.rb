Rails.application.routes.draw do
  authenticate :user, ->(user) { user.admin? } do
  mount Blazer::Engine, at: "blazer"
end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :contracts, except: :destroy do
    resources :commissions, only: %i[create]
    resources :terms, only: %i[new create]
  end

  resources :terms, only: %i[edit update] do
    resources :items, only: %i[new create]
    resources :invoices, only: %i[new create]
  end

  resources :items, only: %i[edit update]
  resources :invoices, only: %i[index show]

  get '/analysis', to: 'checks#analysis'
  get '/simulation', to: 'pages#simulation'
  get '/profile', to: 'pages#profile'

end
