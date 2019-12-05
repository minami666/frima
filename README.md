# テーブル／カラム／データ型／オプション

## 01:users

| Column           | Type   | Options                   |
| ---------------- | ------ | ------------------------- |
| nickname         | string | null: false, unique: true |
| email            | string | null: false, unique: true |
| password         | string | null: false               |
| family_name_knj  | string | null: false               |
| family_name_ktkn | string | null: false               |
| first_name_knj   | string | null: false               |
| first_name_ktkn  | string | null: false               |
| birth            | string | null: false               |
| tel              | string | null: false, unique: true |
| profile          | string |
| image            | string |

### Association

- belongs_to :user, foreign_key: true
- belongs_to :address, foreign_key: true
- has_many : products_id
- has_many : productslikes_id
- has_many : messages_id
- has_many : credits, through: :user_credits
- has_many : address, through: :user_addresss

## 02:adresss テーブル

| Column     | Type    | Options     |
| ---------- | ------- | ----------- |
| postnum    | integer | null: false |
| prefecture | string  | null: false |
| city       | integer | null: false |
| streetnum  | integer | null: false |
| building   | string  | null: false |

### Association

- has_many :users, through :user_address

## 03:user_address

| Column     | Type    | Options |
| ---------- | ------- | ------- |
| user_id    | integer |
| address_id | integer |

### Association

- belongs_to :user, foreign_key: true
- belongs_to :address, foreign_key: true

## 04:credits

| Column      | Type    | Options |
| ----------- | ------- | ------- |
| number      | integer |
| name        | string  |
| deadline    | integer |
| securitynum | integer |

### Association

- has_many :users, through :user_credits

## 05:user_credits

| Column     | Type    | Options |
| ---------- | ------- | ------- |
| user_id    | integer |
| credits_id | integer |

### Association

- belongs_to :user, foreign_key: true
- belongs_to :credit, foreign_key: true

## 06:products

| Column      | Type    | Options     |
| ----------- | ------- | ----------- |
| name        | string  | null: false |
| user_id     | integer | null: false |
| sells_id    | integer | null: false |
| buys_id     | integer | null: true  |
| deliverhow  | integer | null: false |
| deliverdate | date    | null: false |
| price       | integer | null: false |
| explanation | string  | null: true  |
| state       | integer | null: false |

### Association

- has_many : categorys3
- has_many : productimages
- has_many :productslikes
- belongs_to :size
- belongs_to :user
- belongs_to :brand
- has_one :sell
- has_one :buy

## 07:productsimages

| Column      | Type    | Options     |
| ----------- | ------- | ----------- |
| products_id | integer | null: false |
| image01     | string  |
| image02     | string  |
| image03     | string  |
| image04     | string  |
| image05     | string  |
| image06     | string  |
| image07     | string  |
| image08     | string  |
| image09     | string  |
| image10     | string  |

### Association

- belongs_to :product

## 08:sizes

| Column     | Type    | Options     |
| ---------- | ------- | ----------- |
| product_id | integer | null: false |
| sizename   | integer |

### Association

- has_many :products

## 09:messages

| Column      | Type    | Options     |
| ----------- | ------- | ----------- |
| text        | string  | null: false |
| products_id | integer | null: false |
| users_id    | integer | null: false |

### Association

- belongs_to :user
- belongs_to :product

## 10:productslikes

| Column        | Type    | Options     |
| ------------- | ------- | ----------- |
| products_id   | integer | null: false |
| users_id      | integer |
| productslikes | integer |

### Association

- belongs_to :product
- belongs_to :user

## 11:brands

| Column    | Type   | Options     |
| --------- | ------ | ----------- |
| brandname | string | null: false |
| text      | string |

### Association

- has_many :products
- has_many :category1s ,through :category_brands

## 12:brand_category1s

| Column       | Type    | Options |
| ------------ | ------- | ------- |
| category1_id | integer |
| brands_id    | integer |

### Association

- belongs_to :category1, foreign_key: true
- belongs_to :brands, foreign_key: true

## 13:category1s

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |
| text   | string |

### Association

- has_many category2s
- has_many brands, through :category_brands

## 14:category2s

| Column        | Type    | Options     |
| ------------- | ------- | ----------- |
| name          | string  | null: false |
| category1s_id | integer |
| text          | string  |

### Association

- has_many :category3
- belongs_to :category1

## 15:category3s

| Column       | Type    | Options     |
| ------------ | ------- | ----------- |
| name         | string  | null: false |
| category2_id | integer |
| text         | string  |

### Association

- has_many :products
- belongs_to :category2

## 16:sellers

| Column            | Type    | Options     |
| ----------------- | ------- | ----------- |
| products_id       | integer | null: false |
| sellerEvaluate_id | integer | null: false |

### Association

- belongs_to :product
- has_one :buyerEvaluate

## 17:sellerEvaluates

| Column     | Type    | Options     |
| ---------- | ------- | ----------- |
| sellers_id | integer | null: false |
| good       | integer |
| ordinary   | integer |
| bad        | integer |

### Association

- belongs_to :seller

## 18:buyers

| Column           | Type    | Options     |
| ---------------- | ------- | ----------- |
| products_id      | integer | null: false |
| buyerEvaluate_id | integer | null: false |

### Association

- belongs_to :product
- has_one :buyerEvaluate

## 19:buyerEvaluates

| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| buys_id  | integer | null: false |
| good     | integer |
| ordinary | integer |
| bad      | integer |

### Association

- belongs_to :buyer

