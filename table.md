### テーブル：users
| カラム名 | データ型 | NULL | キー | 初期値 | AUTO INCREMENT |
| ---- | ---- | ---- | ---- | ---- | ---- |
| id | bigint(20) |  | PRIMARY |  | YES |
| name | varchar(80) |  |  |  |

<br>

### テーブル：purchases
| カラム名 | データ型 | NULL | キー | 初期値 | AUTO INCREMENT |
| ---- | ---- | ---- | ---- | ---- | ---- |
| id | bigint(20) |  | PRIMARY |  | YES |
| user_id | bigint(20) |  | INDEX |  |
| product_id | bigint(20) |  | INDEX |  |
| purchase_date_time | TIMESTAMP |  |  |  |
| quontity | bigint(20) |  |  |  |

外部キー制約：user_id に対して、users テーブルの id カラムから設定
外部キー制約：product_id に対して、products テーブルの id カラムから設定

<br>

### テーブル：products
| カラム名 | データ型 | NULL | キー | 初期値 | AUTO INCREMENT |
| ---- | ---- | ---- | ---- | ---- | ---- |
| id | bigint(20) |  | PRIMARY |  | YES |
| category_id | bigint(20) |  | INDEX |  |
| price | bigint(20) |  |  |  |
| quontity | bigint(20) |  |  |  |
| stock_quantity | bigint(20) |  |  |  |

外部キー制約：category_id に対して、category テーブルの id カラムから設定

<br>

### テーブル：categories
| カラム名 | データ型 | NULL | キー | 初期値 | AUTO INCREMENT |
| ---- | ---- | ---- | ---- | ---- | ---- |
| id | bigint(20) |  | PRIMARY |  | YES |
| category_name | varchar(80) |  |  |  |
