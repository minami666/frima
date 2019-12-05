Rails.application.routes.draw do
  root to: 'proucts#index'
 resources :proucts, only: [:show,]
end
