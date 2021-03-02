# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|group_name|string|null: false, unique: true|
|email|string|null: false|
|encrypted_password|string|null: false|
### Association
- has_many :students
## studentsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|memo|text|null: false|
### Association
- belongs_to :user
