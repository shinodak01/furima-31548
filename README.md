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
| name           | string     | null: false                    |
| name_kana      | string     | null: false                    |
| nick_name      | string     | null: false                    |
| email          | string     | null: false                    |
| password       | string     | null: false                    |
| birthday_date  | integer    | null: false                    |
| credit_card_id | references | null: false, foreign_key: true |

### Association
- has_many :items
- hss_many :comments
- has_one  :credit_cards


### items  テーブル

| Column          | Type     | Options                          |
| --------------- | -------- | -------------------------------- |
| name            | string   | null: false                      |
| image           | string   | null: false                      |
| text            | string   | null: false                      |
| category        | string   | null: false                      |
| status          | string   | null: false                      |
| shipping        | string   | null: false                      |
| area            | string   | null: false                      |
| delivery_days   | integer  | null: false                      |
| price           | integer  | null: false                      |
| user            | references | null: false, foreign_key: true |
| purchases       | references | null: false, foreign_key: true |

### Association
- hss_many :comments
- belongs_to :users
- has_one :purchases



### purchases  テーブル

| Column          | Type       | Options                        |
| --------------- | ---------- | ------------------------------ |
| postal_code     | integer    | null: false                    |
| prefectures     | string     | null: false                    |
| city            | string     | null: false                    |
| block_number    | integer    | null: false                    |
| building_name   | string     |                                |
| phone_number    | integer    | null: false                    |
| item            | references | null: false, foreign_key: true |
| user            | references | null: false, foreign_key: true |

### Association
- belongs_to :user_id
- belongs_to :items



### credit_cads テーブル

| Column            | Type      | Options                           |
| ----------------- | --------- | --------------------------------- |
| card_info         | integer   | null: false                       |
| expiration_date   | integer   | null: false                       |
| security_code     | integer   | null: false                       |
| user              | references   | null: false, foreign_key: true |

### Association
- belongs_to :users


### comments テーブル

| Column      | Type         | Options                        |
| ----------- | ------------ | ------------------------------ |
| comment     | string       | null: false                    |
| user        | references   | null: false, foreign_key: true |
| item        | references   | null: false, foreign_key: true |


### Association
- belongs_to :users
- belongs_to :items