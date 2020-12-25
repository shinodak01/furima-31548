# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


## users  テーブル

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| last_name      | string     | null: false                    |
| first_name     | string     | null: false                    |
| last_name_kana | string     | null: false                    |
| first_name_kana| string     | null: false                    |
| nick_name      | string     | null: false                    |
| email          | string     | null: false, unique: true      |
| birthday_date  | date       | null: false                    |

### Association
- has_many :items
- hss_many :comments
- has_many :purchases


### items  テーブル

| Column           | Type       | Options                          |
| ---------------- | ---------- | -------------------------------- |
| name             | string     | null: false                      |
| text             | text       | null: false                      |
| category_id      | integer    | null: false                      |
| status_id        | integer    | null: false                      |
| shipping_id      | integer    | null: false                      |
| prefecture_id    | integer    | null: false                      |
| delivery_day_id | integer    | null: false                      |
| price            | integer    | null: false                      |
| user             | references | null: false, foreign_key: true   |

### Association
- hss_many :comments
- belongs_to :user
- has_one :purchase



### purchases  テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| phone_number    | string     | null: false                    |
| item            | references | null: false, foreign_key: true |
| user            | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item
- has_one :address


### addresses  テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| postal_code     | string     | null: false                    |
| prefecture_id   | integer    | null: false                    |
| city            | string     | null: false                    |
| block_number    | string     | null: false                    |
| building_name   | string     |                                |

### Association
- belongs_to :purchase

