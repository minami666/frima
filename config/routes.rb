Rails.application.routes.draw do

  #====================== デバイス ======================
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # ====================== ルートパス ＝ 商品一覧ページ ======================
  root to: 'products#index'

  # ====================== ヘッダーの検索機能用 ======================
  #collection do
  # get 'search'
  #end

  # ====================== 商品：表示 ======================
  # get "/products/show",to:"products#show"
  resources :products, only: [:index, :show] do
              # ===== いいね(商品と紐づくからネスト) =====
    resources :productslikes, only: [:new, :create,:edit,:update]
  end

  # ====================== 商品：出品 ======================
  resources :sellers, only: [:new,:create,:edit,:update,:destroy] do
              # 取引が終わってから「"#{---}"さんを評価しよう」ページに遷移
    resources :sellersevaluates, only: [:new, :create]
  end
  # ====================== 商品：画像 ======================
  resources :productsimages, only: [:new,:create,:edit,:update,:destroy]

  # ====================== 商品メッセージ ======================
  resources :messages, only: [:index,:new,:create,:edit,:update,:delete]

  # ====================== 商品：購入 ======================
  resources :buyers, only: [:new, :create, :show] do
              # 取引が終わってから「"#{---}"さんを評価しよう」ページに遷移
    resources :buyersevaluates, only: [:new, :create]
  end

  # ====================== ブランド ======================
  resources :brands, only: [:index, :show]

  # ====================== カテゴリ ======================
  resources :categories, only: [:index, :show]

  # ====================== クレジットカード ======================
  resources :card, only: [:new,:create,:edit,:update]
  
  resources :purchase, only: [:index] do
    member do
      post 'pay'
      get 'done'
      patch 'pay'
    end
  end
  # ====================== 住所 ======================
  resources :addresses, only: [:new,:create,:edit,:update]


# ====================== ユーザーのマイページ ======================

  get "/mypages/index", to:"mypages#index"
  get "/mypages/sns", to:"mypages#sns"
  get "/mypages/notification", to:"mypages#notification"
  get "/mypages/todo", to:"mypages#todo"
  get "/mypages/listing", to:"mypages#listing"
  get "/mypages/progress", to:"mypages#progress"
  get "/mypages/completed", to:"mypages#completed"
  get "/mypages/buying", to:"mypages#buying"
  get "/mypages/pastransaction", to:"mypages#pastransaction"
  get "/mypages/news", to:"mypages#news"
  get "/mypages/evaluates", to:"mypages#evaluates"
  get "/mypages/support", to:"mypages#support"
  get "/mypages/points", to:"mypages#points"
  get "/mypages/profile", to:"mypages#profile"
  get "/mypages/confirmation", to:"mypages#confirmation"
  get "/mypages/identification", to:"mypages#identification"
  get "/mypages/destroy", to:"mypages#destroy"
  get "/mypages/loginbutton", to:"mypages#loginbutton"
  get "/mypages/tell", to:"mypages#tell"
  get "/mypages/done", to:"mypages#done"

  get "/sellers/:id/edit2", to:"sellers#edit2"


  get "/purchase/index", to:"purchase#index"

 resources :card, only: [:new, :show] do
    collection do
      post 'pay', to: 'card#pay'
       post 'delete', to: 'card#delete'
    end
  end
end
