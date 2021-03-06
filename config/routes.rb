BDayBgosh::Application.routes.draw do
  root 'bgosh#index'

  get "/friends/:friend_id/wishes/new" => 'wishes#new'


  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  resources :friends do
  	resources :wishes
  end
  
end
