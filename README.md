# README

## usersテーブル

| Column                  | Type     | Options                   |
| ----------------------- | -------- | ------------------------- |
| nickname                | string   | NOT NULL                  |
| email                   | string   | NOT NULL, unique: true    |
| encrypted_password      | string   | NOT NULL                  |
| last_name               | string   | NOT NULL                  |
| first_name              | string   | NOT NULL                  |
| last_name_kana          | string   | NOT NULL                  |
| first_name_kana         | string   | NOT NULL                  |
| user_birth_data_1i      | date     | NOT NULL                  |

### association

- has_many :items
- has_many :purchase_records

## itemsテーブル

| Column                      | Type      | Options           |
| --------------------------- | --------- | ------------------|
| item_name                   | string    | NOT NULL          |
| item_info                   | text      | NOT NULL          |
| item_category_id            | integer   | NOT NULL          |
| item_sales_status_id        | integer   | NOT NULL          |
| item_shipping_fee_status_id | integer   | NOT NULL          |
| item_prefecture_id          | integer   | NOT NULL          |
| item_price                  | integer   | NOT NULL          |
| item_scheduled_delivery_id  | integer   | NOT NULL          |
| user                        | reference | foreign_key: true |

### association

- belongs_to :user
- has_one    :purchase_record


## purchase_recordsテーブル

| Column              | Type         | Options           |
| --------------------| -------------|-------------------|
| user_id             | reference    | foreign_key: true |
| item_id             | reference    | foreign_key: true |


### association

- belongs_to :user
- belongs_to :item
- has_one    :shipping_address


## shipping_addressesテーブル

| Column              | Type      | Options           |
| ------------------- | --------- | ----------------- |
| postal_code         | string    | NOT NULL          |
| prefecture_id       | integer   | NOT NULL          |
| city                | string    | NOT NULL          |
| addresses           | string    | NOT NULL          |
| building            | string    |                   |
| phone_number        | string    | NOT NULL          |
| purchase_record_id  | reference | foreign_key: true |

### association

- belongs_to :purchase_record