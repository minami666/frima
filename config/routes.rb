Rails.application.routes.draw do

  #====================== デバイス ======================
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # ====================== ルートパス ＝ 商品一覧ページ ======================

  root to: 'products#index'

  # ====================== ヘッダーの検索機能用 ======================
  #collection do
  # get 'search'
  #end

  # ====================== 商品：表示 ======================

  resources :products, only: [:index, :show]
  get "/products/show",to:"products#show"

              # ===== いいね(商品と紐づくからネスト) =====

  # ====================== 商品：出品 ======================
              # 取引が終わってから「取引相手を評価しよう」ページに遷移

  # ====================== 商品：画像 ======================

  # ====================== 商品メッセージ ======================

  resources :addresses, only: [:index,:new,:create,:edit,:update,:destroy]

  # ====================== 商品：購入 ======================
  resources :buyers, only: [:new, :create, :show] do
              # 取引が終わってから「取引相手を評価しよう」ページに遷移
    resources :buyersevaluates, only: [:new, :create]
  end

  # ====================== ブランド ======================
  resources :brands, only: [:index, :show]

  # ====================== カテゴリ ======================
  resources :categories, only: [:index, :show]

  # ====================== クレジットカード ======================

  resources :credits, only: [:new,:create,:edit,:update]

  # ====================== 住所 ======================
  resources :addresses, only: [:new,:create,:edit,:update]

# ====================== ユーザーのマイページ ======================
  get "/mypage/index", to:"mypage#index"
  get "/mypage/sns", to:"mypage#sns"
  get "/mypage/notification", to:"mypage#notification"
  get "/mypage/todo", to:"mypage#todo"
  get "/mypage/listing", to:"mypage#listing"
  get "/mypage/progress", to:"mypage#progress"
  get "/mypage/completed", to:"mypage#completed"
  get "/mypage/buying", to:"mypage#buying"
  get "/mypage/pastransaction", to:"mypage#pastransaction"
  get "/mypage/news", to:"mypage#news"
  get "/mypage/evaluates", to:"mypage#evaluates"
  get "/mypage/support", to:"mypage#support"
  get "/mypage/points", to:"mypage#points"
  get "/mypage/profile", to:"mypage#profile"
  get "/mypage/confirmation", to:"mypage#confirmation"









end
