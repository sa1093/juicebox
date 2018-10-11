Rails.application.routes.draw do
  resources :posts
  devise_for :users
  resources :juices
  root to: 'juices#index'
  get '/juices/:id' => 'juices#show' 
  post '/juices/:id' => 'juices#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/juices/:id" => "juices#show"
  post "/juices/:id" => "juices#show"
end
