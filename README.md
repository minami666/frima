## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name_family_漢字|string|null: false|
|name_family_カナ|string|null: false|
|name_first_漢字|string|null: false|
|name_first_カナ|string|null: false|
|email|string|null: false|
|password|string|null: false|
|tel|integer|null: false|
|image|string|null: false|
|point|integer|null: false|
|利益|integer|null: false|
|購入金額|integer|null: false|

### Association
- has_many :products
- has_many :productslikes
- has_many :messages
- has_many :クレカs, through :user_クレカ
- has_many :addresses, through::user_address


## 中間(user_クレカ)テーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|クレカ_id|integer|null: false|

### Association
- belongs_to :クレカ
- belongs_to :user


## クレカ(gem:payjp)テーブル
|Column|Type|Options|
|------|----|-------|
|番号|integer|null: true|
|名義人|string|null: true|
|有効期限|integer|null: ture|
|セキュリティ番号|integer|null: true|

### Association
- has_many :users, through :user_クレカ


## 中間(user_address)テーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer||
|address_id|integer||

### Association
- belongs_to :user, foreign_key-true
- belongs_to :address, foreign_key-true


## address(gem)テーブル
|Column|Type|Options|
|------|----|-------|
|郵便|integer|null: false|
|都道府県|integer|null: false|
|市町村|integer|null: false|
|番地|ineger|null: false|
|建物以降|string|null: false|

### Association
- has_many :users, through :user_address


## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|商品_id|integer|null: false|
|user_id|integer|null: false|

### Association
- belongs_to :user
- belongs_to :商品


## 商品いいねテーブル
|Column|Type|Options|
|------|----|-------|
|商品_id|||
|user_id|integer|null: ture|
|いいね!|integer|null: ture|

### Association
- belongs_to :商品
- belongs_to :user


## 商品テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|user_id|integer|null: false|
|出品者_id|integer|null: false|
|購入者_id|integer|null: ture|
|発送方法|integer|null: false|
|発送日|date|null: false|
|価格|integer|null: false|
|説明|string|null: ture|
|取引状態|integer|null: false|
|お届け先住所_id|integer|null: ture|
|決済用クレカ|integer|null: ture|
|area_id|integer|null: false|

### Association
- has_many : categorys3
- has_many : productimages
- has_many :likes
- belongs_to :sizes
- belongs_to :user
- belongs_to :brad
- has_one :出品者
- has_one :購入者


## 商品画像テーブル
|Column|Type|Options|
|------|----|-------|
|商品_id|integer|null: false|
|画像1|integer|null: true|
|以下略10まで|||

### Association
- belongs_to :商品


## サイズテーブル
|Column|Type|Options|
|------|----|-------|
|商品_id|integer|null: false|
|サイズ各カラム|integer|null: true|

### Association
- has_many :商品s

## ブランドテーブル
|Column|Type|Options|
|------|----|-------|
|brandname|string|null: false|
|text|string|null: true|

### Association
- has_many :商品
- has_many  :category1
- through :category_brands


## 中間（カテゴリーブランド）テーブル
|Column|Type|Options|
|------|----|-------|
|category1_id|||
|brands_id|||

### Association
- belongs_to :category1 :foreign-key-true
- belongs_to :brands :foreign-key-true


## カテゴリ大テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|text|string|null: true|

### Association
- has_many category2
- has_many brands, through :category_brands


## カテゴリ中テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: true|
|category1_id|||
|text|string|null: true|
### Association
- has_many category3
- belongs_to category1


## カテゴリ小テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: true|
|category2_id|||
|text|string|null: true|

### Association
- has_many 商品
- belongs_to category2

## Sellsテーブル
|Column|Type|Options|
|------|----|-------|
|products_id|integer| null: false|
|buy_sell_eva_id|integer|null: false|

### Association
- belongs_to :product
- has_one :buy_sell_eva


## Buysellevasテーブル
|Column|Type|Options|
|------|----|-------|
|sells_id|integer| null: false|
|good|integer|null: true|
|ordinary|integer|null: true|
|bad|integer|null: true|

### Association
- belongs_to :sell


## buysテーブル
|Column|Type|Options|
|------|----|-------|
|products_id|integer| null: false|
|sell_buy_eva_id|integer|null: false|

### Association
- belongs_to :product
- has_one :sellbuyeva


## Sellbuyevasテーブル
|Column|Type|Options|
|------|----|-------|
|buys_id|integer| null: false|
|good|integer|null: true|
|ordinary|integer|null: true|
|bad|integer|null: true|

### Association
- belongs_to :buy