# README

## usersテーブル

| Column                  | Type     | Options     |
| ----------------------- | -------- | ----------- |
| nickname                | string   | NOT NULL    |
| email                   | string   | NOT NULL    |
| password                | string   | NOT NULL    |
| password-confirmation   | string   | NOT NULL    |
| last-name               | string   | NOT NULL    |
| first-name              | string   | NOT NULL    |
| last-name-kana          | string   | NOT NULL    |
| first-name-kana         | string   | NOT NULL    |
| user-birth-data-1i      | integer  | NOT NULL    |

### association

- has_many :items
- has_one  :charge
- has_one  :shipping-address

## itemsテーブル

| Column                   | Type     | Options     |
| ------------------------ | -------- | ----------- |
| item-image               | text     | NOT NULL    |
| item-name                | string   | NOT NULL    |
| item-info                | text     | NOT NULL    |
| item-category            | string   | NOT NULL    |
| item-sales-status        | string   | NOT NULL    |
| item-shipping-fee-status | string   | NOT NULL    |
| item-prefecture          | string   | NOT NULL    |
| item-price               | integer  | NOT NULL    |
| add-tax-price            | integer  | NOT NULL    |
| profit                   | integer  | NOT NULL    |
| item-scheduled-delivery  | integer  | NOT NULL    |

### association

- belongs_to :users
- has_one    :charge
- has_one    :shipping-address

## chargeテーブル

| Column              | Type      | Options      |
| --------------------| ----------|--------------|
| card-number         | integer   | NOT NULL     |
| card-exp-month      | integer   | NOT NULL     |
| carf-exp-year       | integer   | NOT NULL     |
| card-cvc            | integer   | NOT NULL     |

### association

- belongs_to :users
- belongs_to :items

## shipping-addressテーブル

| Column        | Type     | Options     |
| ------------- | -------- | ----------- |
| postel-code   | integer  | NOT NULL    |
| prefecture    | string   | NOT NULL    |
| city          | string   | NOT NULL    |
| addresses     | integer  | NOT NULL    |
| building      | string   | NOT NULL    |
| phone-number  | integer  | NOT NULL    |

### association

- belongs_to :users
- belongs_to :items