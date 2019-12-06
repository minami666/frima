Rails.application.routes.draw do

  root to: 'products#index'
  resources :products, only: [:show]
  #collection do #検索機能用
   # get 'search'
  #end
end
