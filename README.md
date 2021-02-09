# README

## usersテーブル

| Column                  | Type     | Options                  |
| ----------------------- | -------- | -------------------------|
| nickname                | string   | NOT NULL                 |
| email                   | string   | NOT NULL, unique: true   |
| encrypted_password      | string   | NOT NULL                 |
| last_name               | string   | NOT NULL                 |
| first_name              | string   | NOT NULL                 |
| last_name_kana          | string   | NOT NULL                 |
| first_name_kana         | string   | NOT NULL                 |
| user_birth_data_1i      | date     | NOT NULL                 | 

### association

- has_many :items
- has_many :purchase-record

## itemsテーブル

| Column                      | Type     | Options     |
| --------------------------- | -------- | ----------- |
| item_name                   | string   | NOT NULL    |
| item_info                   | text     | NOT NULL    |
| item_category_id            | intege   | NOT NULL    |
| item_sales-status_id        | integer  | NOT NULL    |
| item_shipping-fee-status_id | integer  | NOT NULL    |
| item_prefecture_id          | integer  | NOT NULL    |
| item_price                  | integer  | NOT NULL    |
| item_scheduled_delivery_id  | integer  | NOT NULL    |

### association

- belongs_to :user
- has_one    :purchase-record

## purchase-recordテーブル

| Column              | Type      | Options      |
| --------------------| ----------|--------------|
| purchaser           | string    | NOT NULL     |
| purchased_item      | string    | NOT NULL     |


### association

- belongs_to :user
- belongs_to :item
- has_one    :shipping-address

## shipping-addressテーブル

| Column           | Type     | Options     |
| ---------------- | -------- | ----------- |
| postal_code      | string   | NOT NULL    |
| prefecture_id    | integer  | NOT NULL    |
| city             | string   | NOT NULL    |
| addresses        | string   | NOT NULL    |
| building         | string   |             |
| phone_number     | string   | NOT NULL    |

### association

- belongs_to :purchase-record