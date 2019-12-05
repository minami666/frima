#テーブル／カラム／データ型／オプション

## 01:users
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|
|family_name_knj|string|null: false|
|family_name_ktkn|string|null: false|
|first_name_knj|string|null: false|
|first_name_ktkn|string|null: false|
|birth|string|null: false|
|tel|string|null: false, unique: true|
|profile|string|
|image|string|

### Association
- belongs_to :user, foreign_key: true
- belongs_to :address, foreign_key: true
- has_many : products_id
- has_many : productslikes_id
- has_many : messages_id
- has_many : credits, through: :user_credits
- has_many : address, through: :user_addresss

## 02:adresssテーブル
|Column|Type|Options|
|------|----|-------|
|postnum|integer|null: false|
|prefecture|string|null: false|
|city|integer|null: false|
|streetnum|integer|null: false|
|building|string|null: false|

### Association
- has_many :users, through :user_address

## 03:user_address
|Column|Type|Options|
|------|----|-------|
|user_id|integer|
|address_id|integer|

### Association
- belongs_to :user, foreign_key: true
- belongs_to :address, foreign_key: true

## 04:credits
|Column|Type|Options|
|------|----|-------|
|number|integer|
|name|string|
|deadline|integer|
|securitynum|integer|

### Association
- has_many :users, through :user_credits

## 05:user_credits
|Column|Type|Options|
|------|----|-------|
|user_id|integer|
|credits_id|integer|

### Association
- belongs_to :user, foreign_key: true
- belongs_to :credit, foreign_key: true

## 06:products
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|user_id|integer|null: false|
|sells_id|integer|null: false|
|buys_id|integer|null: true|
|deliverhow|integer|null: false|
|deliverdate|date|null: false|
|price|integer|null: false|
|explanation|string|null: true|
|state|integer|null: false|

### Association
- has_many : categorys3
- has_many : productimages
- has_many :productslikes
- belongs_to :size
- belongs_to :user
- belongs_to :brand
- has_one :sell
- has_one :buy

## 07:productsimages
|Column|Type|Options|
|------|----|-------|
|products_id|integer|null: false|
|image01|string|null: true|
|image02|string|null: true|
|image03|string|null: true|
|image04|string|null: true|
|image05|string|null: true|
|image06|string|null: true|
|image07|string|null: true|
|image08|string|null: true|
|image09|string|null: true|
|image10|string|null: true|

### Association
- belongs_to :product

## 08:sizes
|Column|Type|Options|
|------|----|-------|
|product_id|integer|null: false|
|sizename|integer|null: true|

### Association
- has_many :products

## 09:messages
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|products_id|integer|null: false|
|users_id|integer|null: false|

### Association
- belongs_to :user
- belongs_to :product


## 10:productslikes
|Column|Type|Options|
|------|----|-------|
|products_id|integer|null: false|
|users_id|integer|null: true|
|productslikes|integer|null: true|

### Association
- belongs_to :product
- belongs_to :user


## 11:brands
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
