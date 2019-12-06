# テーブル／カラム／データ型／オプション

## 01:users

|  Column            |  Type    |  Options                    |
| ------------------ | -------- | --------------------------- |
|  nickname          |  string  |  null: false, unique: true  |
|  email             |  string  |  null: false, unique: true  |
|  password          |  string  |  null: false                |
|  family_name_knj   |  string  |  null: false                |
|  family_name_ktkn  |  string  |  null: false                |
|  first_name_knj    |  string  |  null: false                |
|  first_name_ktkn   |  string  |  null: false                |
|  birth             |  string  |  null: false                |
|  tel               |  string  |  null: false, unique: true  |
|  profile           |  string  |
|  image             |  string  |

### Association

- has_many :products, dependent: destroy
- has_many :productslikes, dependent: destroy
- has_many :messages, dependent: destroy
- has_one :credit, dependent: destroy
- has_many :addresss, dependent: destroy

## 02:adresss  テーブル

|  Column       |  Type     |  Options      |
| ------------- | --------- | ------------- |
|  user_id      |  integer  |  null: false  |
|  postnum      |  integer  |  null: false  |
|  prefecture   |  string   |  null: false  |
|  city         |  integer  |  null: false  |
|  street_num   |  integer  |  null: false  |
|  building     |  string   |

### Association

- belongs_to :user

## 03:credits

|  Column        |  Type     |  Options  |
| -------------- | --------- | --------- |
|  number        |  integer  |
|  name          |  string   |
|  deadline      |  integer  |
|  security_num  |  integer  |

### Association

- belongs_to :user

## 04:products

|  Column          |  Type     |  Options      |
| ---------------- | --------- | ------------- |
|  name            |  string   |  null: false  |
|  user_id         |  integer  |  null: false  |
|  sells_id        |  integer  |  null: false  |
|  buys_id         |  integer  |  null: true   |
|  deliver_how     |  integer  |  null: false  |
|  deliver_date    |  date     |  null: false  |
|  price           |  integer  |  null: false  |
|  explanation     |  string   |  null: true   |
|  state           |  integer  |  null: false  |
|  brand_id        |  integer  |  null: false  |
|  sizes_id        |  integer  |  null: false  |

### Association

- has_many :productsimages, dependent: destroy
- has_many :productslikes, dependent: destroy
- belongs_to :user, foreign_key: true
- belongs_to :size, foreign_key: true
- belongs_to :brand, foreign_key: true
- belongs_to :category, foreign_key: true
- has_one :seller
- has_one :buyer

## 05:productsimages

|  Column       |  Type     |  Options      |
| ------------- | --------- | ------------- |
|  products_id  |  integer  |  null: false  |
|  image01      |  string   |  null: false  |

### Association

- belongs_to :product, foreign_key: true

## 06:sizes

|  Column       |  Type     |  Options      |
| ------------- | --------- | ------------- |
|  size_name    |  integer  |

### Association

- has_many :products

## 07:messages

|  Column       |  Type     |  Options      |
| ------------- | --------- | ------------- |
|  text         |  string   |  null: false  |
|  products_id  |  integer  |  null: false  |
|  users_id     |  integer  |  null: false  |

### Association

- belongs_to :user, foreign_key: true
- belongs_to :product, foreign_key: true

## 08:productslikes

|  Column          |  Type     |  Options      |
| ---------------- | --------- | ------------- |
|  products_id     |  integer  |  null: false  |
|  users_id        |  integer  |
|  products_likes  |  integer  |

### Association

- belongs_to :product, foreign_key: true
- belongs_to :user, foreign_key: true

## 09:brands

|  Column      |  Type    |  Options      |
| ------------ | -------- | ------------- |
|  brand_name  |  string  |  null: false  |
|  text        |  string  |

### Association

- has_many :products
- has_many :categorys ,through :brand_categorys
- has_many :brand_categorys

## 10:brand_categorys

|  Column        |  Type     |  Options  |
| -------------- | --------- | --------- |
|  categorys_id  |  integer  |
|  brands_id     |  integer  |

### Association

- belongs_to :category, foreign_key: true
- belongs_to :brand, foreign_key: true

## 11:categorys

|  Column  |  Type    |  Options      |
| -------- | -------- | ------------- |
|  name    |  string  |  null: false  |
|  text    |  string  |

### Association

- has_many :products
- has_many :brands, through :brand_categorys

- has_many :brand_categorys

## 12:sellers

|  Column              |  Type     |  Options      |
| -------------------- | --------- | ------------- |
|  products_id         |  integer  |  null: false  |
|  users_id            |  integer  |  null: false  |
|  seller_evaluate_id  |  integer  |  null: false  |

### Association

- belongs_to :product, foreign_key: true
- belongs_to :user, foreign_key: true
- has_one :buyer_evaluate, dependent: destroy

## 13:sellerEvaluates

|  Column      |  Type     |  Options      |
| ------------ | --------- | ------------- |
|  sellers_id  |  integer  |  null: false  |
|  good        |  integer  |
|  ordinary    |  integer  |
|  bad         |  integer  |

### Association

- belongs_to :seller, foreign_key: true, dependent: destroy

## 14:buyers

|  Column             |  Type     |  Options      |
| ------------------- | --------- | ------------- |
|  products_id        |  integer  |  null: false  |
|  users_id           |  integer  |  null: false  |
|  buyer_evaluate_id  |  integer  |  null: false  |

### Association

- belongs_to :product, foreign_key: true
- belongs_to :user, foreign_key: true
- has_one :buyer_evaluate, dependent: destroy

## 15:buyerEvaluates

|  Column    |  Type     |  Options      |
| ---------- | --------- | ------------- |
|  buys_id   |  integer  |  null: false  |
|  good      |  integer  |
|  ordinary  |  integer  |
|  bad       |  integer  |

### Association

- belongs_to :buyer, foreign_key: true, dependent: destroy
