#テーブル設計

## usersテーブル

| Column    | Type       | Options                            |
| --------  | ---------- | ---------------------------------- |
| email     | string     | null: false                        |
| password  | string     | null: false                        |
| name      | string     | null: false                        |
| profile   | text       | null: false                        |
| occupation| text       | null: false                        |
| position  | text       | null: false                        | 

### Association

- has_many :comments
- has_many :prototype


## commentsテーブル

| Column    | Type       | Options                            |
| --------  | ---------- | ---------------------------------- |
| text      | text       | null: false                        |
| user      | reference  |                                    |
| prototype | reference  |                                    |

### Association

- belongs_to :user
- belongs_to :prototype



## prototypesテーブル

| Column    | Type         | Options                            |
| --------  | ----------   | ---------------------------------- |
| title     | string       | null: false                        |
| catch_copy| text         | null: false                        |
| concept   | text         | null: false                        |
| image     | ------------ |                                    |
| user      | reference    |                                    |


### Association

- has_many :users
- has many: comments
