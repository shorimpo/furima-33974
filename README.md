# README

## usersテーブル

| Column                  | Type     | Options                   |
| ----------------------- | -------- | ------------------------- |
| nickname                | string   | null: false               |
| email                   | string   | null: false, unique: true |
| encrypted_password      | string   | null: false               |
| last_name               | string   | null: false               |
| first_name              | string   | null: false               |
| last_name_kana          | string   | null: false               |
| first_name_kana         | string   | null: false               |
| user_birth_data_1i      | date     | null: false               |

### association

- has_many :items
- has_many :purchase_records
- has_many :comments

## itemsテーブル

| Column                      | Type      | Options           |
| --------------------------- | --------- | ------------------|
| name                        | string    | null: false       |
| info                        | text      | null: false       |
| category_id                 | integer   | null: false       |
| sales_status_id             | integer   | null: false       |
| shipping_fee_status_id      | integer   | null: false       |
| prefecture_id               | integer   | null: false       |
| price                       | integer   | null: false       |
| scheduled_delivery_id       | integer   | null: false       |
| user                        | reference | foreign_key: true |

### association

- belongs_to :user
- has_one    :purchase_record
- has_many   :comments


## purchase_recordsテーブル

| Column              | Type         | Options           |
| --------------------| -------------|-------------------|
| user                | reference    | foreign_key: true |
| item                | reference    | foreign_key: true |


### association

- belongs_to :user
- belongs_to :item
- has_one    :shipping_address


## shipping_addressesテーブル

| Column              | Type      | Options           |
| ------------------- | --------- | ----------------- |
| postal_code         | string    | null: false       |
| prefecture_id       | integer   | null: false       |
| city                | string    | null: false       |
| addresses           | string    | null: false       |
| building            | string    |                   |
| phone_number        | string    | null: false       |
| purchase_record     | reference | foreign_key: true |

### association

- belongs_to :purchase_record

### commentsテーブル

| Column              | Type      | Options           |
| ------------------- | --------- | ----------------- |
| user                | reference | foreign_key: true |
| item                | reference | foreign_key: ture |
| text                | text      | null: false       |

- belongs_to :user
- belongs_to :item