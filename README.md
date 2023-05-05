# アプリケーション名
#### bag-app2

# アプリケーション概要
##### バッグを購入する際に実際に使用したユーザーの口コミ等を確認し購入時に役立てることができる。

# URL
##### https://bag-app2.onrender.com/

# 利用方法
## ユーザー登録
##### 1.トップページのヘッダーから新規登録を行う
## 知りたいバッグの検索

# アプリケーションを作成した背景
##### 自身の現職であるバッグの販売をしている中で『バッグを購入する際に参考になるアプリがあれば今よりもバッグに購入がし易くなるのではないか』と思い開発を決意した。また、専門的な商品情報等は商品のホームページでも確認できるが実際のユーザーの使い心地等は確認できないので、そういった情報に特化したアプリの必要性を感じた。

# 実装した機能についての画像や説明

# 新規登録画面
##### ・トップページヘッダーより遷移します。

##### ・必要な情報は「メールアドレス」「パスワード」「ユーザー名」「年齢」のみとシンプルに仕上げました。





# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nick_name          | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| age                | integer | null: false               |

### Association

- has_many :items
- has_many :comments

## items テーブル

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| brand_name   | string     | null: false                    |
| product_name | string     | null: false                    |
| category_id  | integer    | null: false                    |
| price        | integer    | null: false                    |
| user         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| comments | string     | null: false                    |
| user     | references | null: false, foreign_key: true |
| item     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item

