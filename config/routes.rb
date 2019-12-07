Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'products#index'
  resources :products, only: [:index, :show]
  #collection do #検索機能用
  # get 'search'
  #end
  get "/products/show",to:"products#show"

end
