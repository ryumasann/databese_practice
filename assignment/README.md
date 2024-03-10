# 提出QUEST
## 課題URL
https://github.com/APPRENTICE-jp/apprentice/blob/4th/quest/technologies/database/INTERNET_TV.md

## ステップ1: テーブル設計

### program_slots
| カラム名| データ型| NULL| キー| 初期値| AUTO INCREMENT|
| ------ |------|----| ----| ----| ----|
| channel_name | CHAR(20) | | PRIMARY | | |
| start_time | DATETIME | | PRIMARY | | |
| end_time | DATETIME | | PRIMARY | | |
| title_name | CHAR(210) | | INDEX | | |
| season_num | SMALLINT | | | | |
| episode_num | INT | | | | |
- 外部キー制約：title_name、season_num、episode_num カラムに対して設定

### programs
| カラム名| データ型| NULL| キー| 初期値| AUTO INCREMENT|
| ------ |------|----| ----| ----| ----|
| title_name | CHAR(210) | | PRIMARY | | |
| season_num | SMALLINT | | PRIMARY | |
| genre_id | SMALLINT | | | | |
| detail | varchar(2000) | | | | |
- 外部キー制約：genre_id カラムに対して設定

### genre
| カラム名| データ型| NULL| キー| 初期値| AUTO INCREMENT|
| ------ |------|----| ----| ----| ----|
| genre_id | SMALLINT | | PRIMARY | | |
| genre_name | varchar(100) | | PRIMARY | |

### episodes
| カラム名| データ型| NULL| キー| 初期値| AUTO INCREMENT|
| ------ |------|----| ----| ----| ----|
| title_name | CHAR(210) | | PRIMARY | | |
| season_num | SMALLINT | | PRIMARY | |
| episode_num | SMALLINT | | | |
| episode_name | CHAR(210) | | | |
| episode_details | varchar(2000) | | | |
| released_ad | DATETIME | | | |
| video_duration | TIME | | | |
| viewer | BIGINT | | | |
- 外部キー制約：title_name、season_num カラムに対して設定

## ステップ2:
データベースの作成方法は以下の資料に記載しております。

## ステップ３:
各クエリを「Step3-1.sql」...に記載しております。