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
| episode_num | SMALLINT | | | | |
- 外部キー制約：title_name、season_num, episode_numは参照先をepisodesテーブルに対して設定。

### programs
| カラム名| データ型| NULL| キー| 初期値| AUTO INCREMENT|
| ------ |------|----| ----| ----| ----|
| title_name | CHAR(210) | | PRIMARY | | |
| season_num | SMALLINT | | PRIMARY | |
| genre_id | SMALLINT | | | | |
| detail | VARCHAR(2000) | | YES | | |
- 外部キー制約：genre_id カラムに対して設定

### genres
| カラム名| データ型| NULL| キー| 初期値| AUTO INCREMENT|
| ------ |------|----| ----| ----| ----|
| genre_id | SMALLINT | | PRIMARY | | |
| genre_name | VARCHAR(100) | | PRIMARY | |

### episodes
| カラム名| データ型| NULL| キー| 初期値| AUTO INCREMENT|
| ------ |------|----| ----| ----| ----|
| title_name | CHAR(210) | | PRIMARY | | |
| season_num | SMALLINT | | PRIMARY | |
| episode_num | SMALLINT | | PRIMARY | |
| episode_name | CHAR(210) | | | |
| episode_details | VARCHAR(2000) | YES | | |
| released_ad | DATETIME | | | |
| video_duration | TIME | | 00:00:00 | |
| viewer | BIGINT | | | 0 |
- 外部キー制約：title_name、season_numは参照先をprogramsテーブルに対して設定。

## ステップ2:
[手順](./step2.md)

## ステップ３:
[SQL](./step3.sql)