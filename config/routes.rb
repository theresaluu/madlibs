BDayBgosh::Application.routes.draw do
  root 'bgosh#index'

  namespace :api, defaults: {format: :json} do
    resources :wish_lists, only: [:index] do
      resources :wishes, only: [:index, :create, :update, :destroy]
    end
  end
  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
  
end
