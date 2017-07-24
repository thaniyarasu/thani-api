Rails.application.routes.draw do

  scope '/api' do
    resources :heroes
    resources :posts
  end

  #get 'angular/index'
  match '/*path' => 'angular#index', via: [:get, :post, :options, :put, :patch, :delete, :head]
  match '/' => 'angular#index', via: [:get, :post, :options, :put, :patch, :delete, :head]
  #root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
