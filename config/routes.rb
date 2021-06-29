Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :events, only: [:new, :create, :show] do
    resources :participants, only: [:new, :create]
    get "allocate_participants", to: "events#allocate_participants"
  end
end
