# DB構築、サンプルデータ投入手順

## 前提
MySQLサーバーが各自の環境にインストールされており、テーブルの作成と変更する権限ユーザーでMySQLサーバーへログインできた状態であること。
実行手順は以下の環境で検証
```linux
■LINUX
/etc/issue
Ubuntu 22.04.4 LTS
■MySQL
mysql --version
mysql  Ver 8.0.36-0ubuntu0.22.04.1 for Linux on x86_64 ((Ubuntu))
```

## データベースの構築
```sql
;mysqlのステータスを確認し、停止状態ならば起動する。
service mysql status
service mysql start

;mysqlにログイン
mysql -u ユーザー名 -p
※コマンド後にパスワードを入力。

;データベースを作成
CREATE DATABASE internet_tv;

;データベースの指定
USE internet_tv;
```

## テーブル構築
ステップ1で設計したテーブルを記載された順序通りにコマンドを実行
```sql
-- genres テーブル
CREATE TABLE genres (
    genre_id SMALLINT NOT NULL,
    genre_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (genre_id, genre_name)
);

-- programs テーブル
CREATE TABLE programs (
    title_name CHAR(210) NOT NULL,
    season_num SMALLINT NOT NULL,
    genre_id SMALLINT,
    detail VARCHAR(1500),
    PRIMARY KEY (title_name, season_num),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

-- episodes テーブル
CREATE TABLE episodes (
    title_name CHAR(210) NOT NULL,
    season_num SMALLINT NOT NULL,
    episode_num SMALLINT NOT NULL,
    episode_name CHAR(210),
    episode_details VARCHAR(2000) DEFAULT NULL,
    released_ad DATETIME,
    video_duration TIME DEFAULT '00:00:00',
    viewer BIGINT DEFAULT 0,
    PRIMARY KEY (title_name, season_num, episode_num),
    FOREIGN KEY (title_name, season_num) REFERENCES programs(title_name, season_num)
);

-- program_slots テーブル
CREATE TABLE program_slots (
    channel_name CHAR(20) NOT NULL,
    start_time DATETIME NOT NULL,
    end_time DATETIME NOT NULL,
    title_name CHAR(210) NOT NULL,
    season_num SMALLINT NOT NULL,
    episode_num SMALLINT NOT NULL,
    PRIMARY KEY (channel_name, start_time, end_time),
    INDEX (title_name),
    FOREIGN KEY (title_name, season_num, episode_num) REFERENCES episodes(title_name, season_num, episode_num)
);

```

##  サンプルデータの投入
``` sql
-- genres
INSERT INTO genres (genre_id, genre_name) VALUES (1, 'ドラマ');
INSERT INTO genres (genre_id, genre_name) VALUES (1, 'アクション');
INSERT INTO genres (genre_id, genre_name) VALUES (2, 'アクション');
INSERT INTO genres (genre_id, genre_name) VALUES (3, 'コメディ');
INSERT INTO genres (genre_id, genre_name) VALUES (4, 'アニメ');
INSERT INTO genres (genre_id, genre_name) VALUES (5, 'スポーツ');
INSERT INTO genres (genre_id, genre_name) VALUES (6, 'ホラー');
INSERT INTO genres (genre_id, genre_name) VALUES (7, 'SF');
INSERT INTO genres (genre_id, genre_name) VALUES (8, 'ファンタジー');
INSERT INTO genres (genre_id, genre_name) VALUES (9, 'ドキュメンタリー');
INSERT INTO genres (genre_id, genre_name) VALUES (10, 'バラエティ');
mysql> select * from genres;
+----------+--------------------------+
| genre_id | genre_name               |
+----------+--------------------------+
|        1 | ドラマ                   |
|        2 | アクション               |
|        3 | コメディ                 |
|        4 | アニメ                   |
|        5 | スポーツ                 |
|        6 | ホラー                   |
|        7 | SF                       |
|        8 | ファンタジー             |
|        9 | ドキュメンタリー         |
|       10 | バラエティ               |
+----------+--------------------------+
10 rows in set (0.00 sec)

-- programs テーブル
INSERT INTO programs (title_name, season_num, genre_id, detail) VALUES ('ドラマ1', 1, 1, 'ドラマ1の詳細情報');
INSERT INTO programs (title_name, season_num, genre_id, detail) VALUES ('ドラマ2', 2, 1, 'ドラマ2の詳細情報');
INSERT INTO programs (title_name, season_num, genre_id, detail) VALUES ('アクション1', 1, 2, 'アクション1の詳細情報');
INSERT INTO programs (title_name, season_num, genre_id, detail) VALUES ('アクション2', 3, 2, 'アクション2の詳細情報');
INSERT INTO programs (title_name, season_num, genre_id, detail) VALUES ('コメディ1', 1, 3, 'コメディ1の詳細情報');
INSERT INTO programs (title_name, season_num, genre_id, detail) VALUES ('アニメ1', 1, 4, 'アニメ1の詳細情報');
INSERT INTO programs (title_name, season_num, genre_id, detail) VALUES ('スポーツ1', 1, 5, 'スポーツ1の詳細情報');
INSERT INTO programs (title_name, season_num, genre_id, detail) VALUES ('ホラー1', 1, 6, 'ホラー1の詳細情報');
INSERT INTO programs (title_name, season_num, genre_id, detail) VALUES ('SF1', 1, 7, 'SF1の詳細情報');
INSERT INTO programs (title_name, season_num, genre_id, detail) VALUES ('ファンタジー1', 1, 8, 'ファンタジー1の詳細情報');

mysql> select * from programs;
+---------------------+------------+----------+------------------------------------+
| title_name          | season_num | genre_id | detail                             |
+---------------------+------------+----------+------------------------------------+
| SF1                 |          1 |        7 | SF1の詳細情報                      |
| アクション1         |          1 |        2 | アクション1の詳細情報              |
| アクション2         |          3 |        2 | アクション2の詳細情報              |
| アニメ1             |          1 |        4 | アニメ1の詳細情報                  |
| コメディ1           |          1 |        3 | コメディ1の詳細情報                |
| スポーツ1           |          1 |        5 | スポーツ1の詳細情報                |
| ドラマ1             |          1 |        1 | ドラマ1の詳細情報                  |
| ドラマ2             |          2 |        1 | ドラマ2の詳細情報                  |
| ファンタジー1       |          1 |        8 | ファンタジー1の詳細情報            |
| ホラー1             |          1 |        6 | ホラー1の詳細情報                  |
+---------------------+------------+----------+------------------------------------+
10 rows in set (0.00 sec)


-- episodes テーブル
INSERT INTO episodes (title_name, season_num, episode_num, episode_name, episode_details, released_ad, video_duration, viewer)
VALUES ('ドラマ1', 1, 1, 'エピソード1', 'ドラマ1 エピソード1の詳細情報', '2024-03-07 22:00:00', '00:30:00', 100000);
INSERT INTO episodes (title_name, season_num, episode_num, episode_name, episode_details, released_ad, video_duration, viewer)
VALUES ('ドラマ2', 2, 3, 'エピソード3', 'ドラマ2 エピソード3の詳細情報', '2024-03-08 22:30:00', '00:45:00', 120000);
INSERT INTO episodes (title_name, season_num, episode_num, episode_name, episode_details, released_ad, video_duration, viewer)
VALUES ('アクション1', 1, 5, 'エピソード5', 'アクション1 エピソード5の詳細情報', '2024-03-09 18:30:00', '00:40:00', 90000);
INSERT INTO episodes (title_name, season_num, episode_num, episode_name, episode_details, released_ad, video_duration, viewer)
VALUES ('アクション2', 3, 2, 'エピソード2', 'アクション2 エピソード2の詳細情報', '2024-03-10 20:00:00', '00:35:00', 110000);
INSERT INTO episodes (title_name, season_num, episode_num, episode_name, episode_details, released_ad, video_duration, viewer)
VALUES ('コメディ1', 1, 1, 'エピソード1', 'コメディ1 エピソード1の詳細情報', '2024-03-11 15:30:00', '00:25:00', 95000);
INSERT INTO episodes (title_name, season_num, episode_num, episode_name, episode_details, released_ad, video_duration, viewer)
VALUES ('アニメ1', 1, 10, '最終話', 'アニメ1 最終話の詳細情報', '2024-03-12 19:00:00', '01:00:00', 150000);
INSERT INTO episodes (title_name, season_num, episode_num, episode_name, episode_details, released_ad, video_duration, viewer)
VALUES ('スポーツ1', 1, 1, '試合開始', 'スポーツ1 試合開始の詳細情報', '2024-03-13 16:00:00', '02:00:00', 200000);
INSERT INTO episodes (title_name, season_num, episode_num, episode_name, episode_details, released_ad, video_duration, viewer)
VALUES ('ホラー1', 1, 3, 'エピソード3', 'ホラー1 エピソード3の詳細情報', '2024-03-14 13:00:00', '00:50:00', 130000);
INSERT INTO episodes (title_name, season_num, episode_num, episode_name, episode_details, released_ad, video_duration, viewer)
VALUES ('SF1', 1, 7, 'エピソード7', 'SF1 エピソード7の詳細情報', '2024-03-15 20:30:00', '00:55:00', 160000);
INSERT INTO episodes (title_name, season_num, episode_num, episode_name, episode_details, released_ad, video_duration, viewer)
VALUES ('ファンタジー1', 1, 1, '序章', 'ファンタジー1 序章の詳細情報', '2024-03-16 12:30:00', '00:20:00', 80000);

mysql> SELECT * FROM episodes;
+---------------------+------------+-------------+------------------+--------------------------------------------------+---------------------+----------------+--------+
| title_name          | season_num | episode_num | episode_name     | episode_details                                  | released_ad         | video_duration | viewer |
+---------------------+------------+-------------+------------------+--------------------------------------------------+---------------------+----------------+--------+
| SF1                 |          1 |           7 | エピソード7      | SF1 エピソード7の詳細情報                        | 2024-03-15 20:30:00 | 00:55:00       | 160000 |
| アクション1         |          1 |           5 | エピソード5      | アクション1 エピソード5の詳細情報                | 2024-03-09 18:30:00 | 00:40:00       |  90000 |
| アクション2         |          3 |           2 | エピソード2      | アクション2 エピソード2の詳細情報                | 2024-03-10 20:00:00 | 00:35:00       | 110000 |
| アニメ1             |          1 |          10 | 最終話           | アニメ1 最終話の詳細情報                         | 2024-03-12 19:00:00 | 01:00:00       | 150000 |
| コメディ1           |          1 |           1 | エピソード1      | コメディ1 エピソード1の詳細情報                  | 2024-03-11 15:30:00 | 00:25:00       |  95000 |
| スポーツ1           |          1 |           1 | 試合開始         | スポーツ1 試合開始の詳細情報                     | 2024-03-13 16:00:00 | 02:00:00       | 200000 |
| ドラマ1             |          1 |           1 | エピソード1      | ドラマ1 エピソード1の詳細情報                    | 2024-03-07 22:00:00 | 00:30:00       | 100000 |
| ドラマ2             |          2 |           3 | エピソード3      | ドラマ2 エピソード3の詳細情報                    | 2024-03-08 22:30:00 | 00:45:00       | 120000 |
| ファンタジー1       |          1 |           1 | 序章             | ファンタジー1 序章の詳細情報                     | 2024-03-16 12:30:00 | 00:20:00       |  80000 |
| ホラー1             |          1 |           3 | エピソード3      | ホラー1 エピソード3の詳細情報                    | 2024-03-14 13:00:00 | 00:50:00       | 130000 |
+---------------------+------------+-------------+------------------+--------------------------------------------------+---------------------+----------------+--------+
10 rows in set (0.01 sec)

-- program_slots;
INSERT INTO program_slots (channel_name, start_time, end_time, title_name, season_num, episode_num)
VALUES ('Channel1', '2024-03-07 22:00:00', '2024-03-07 22:30:00', 'ドラマ1', 1, 1);
INSERT INTO program_slots (channel_name, start_time, end_time, title_name, season_num, episode_num)
VALUES ('Channel2', '2024-03-08 22:30:00', '2024-03-09 23:15:00', 'ドラマ2', 2, 3);
INSERT INTO program_slots (channel_name, start_time, end_time, title_name, season_num, episode_num)
VALUES ('Channel3', '2024-03-09 18:30:00', '2024-03-09 19:10:00', 'アクション1', 1, 5);
INSERT INTO program_slots (channel_name, start_time, end_time, title_name, season_num, episode_num)
VALUES ('Channel4', '2024-03-10 20:00:00', '2024-03-10 20:35:00', 'アクション2', 3, 2);
INSERT INTO program_slots (channel_name, start_time, end_time, title_name, season_num, episode_num)
VALUES ('Channel5', '2024-03-11 15:30:00', '2024-03-11 15:55:00', 'コメディ1', 1, 1);
INSERT INTO program_slots (channel_name, start_time, end_time, title_name, season_num, episode_num)
VALUES ('Channel6', '2024-03-12 19:00:00', '2024-03-12 20:00:00', 'アニメ1', 1, 10);
INSERT INTO program_slots (channel_name, start_time, end_time, title_name, season_num, episode_num)
VALUES ('Channel7', '2024-03-13 16:00:00', '2024-03-13 18:00:00', 'スポーツ1', 1, 1);
INSERT INTO program_slots (channel_name, start_time, end_time, title_name, season_num, episode_num)
VALUES ('Channel8', '2024-03-14 13:00:00', '2024-03-14 13:50:00', 'ホラー1', 1, 3);
INSERT INTO program_slots (channel_name, start_time, end_time, title_name, season_num, episode_num)
VALUES ('Channel9', '2024-03-15 20:30:00', '2024-03-15 21:25:00', 'SF1', 1, 7);
INSERT INTO program_slots (channel_name, start_time, end_time, title_name, season_num, episode_num)
VALUES ('Channel10', '2024-03-16 12:30:00', '2024-03-16 12:50:00', 'ファンタジー1', 1, 1);

mysql> select * from program_slots;
+--------------+---------------------+---------------------+---------------------+------------+-------------+
| channel_name | start_time          | end_time            | title_name          | season_num | episode_num |
+--------------+---------------------+---------------------+---------------------+------------+-------------+
| Channel9     | 2024-03-15 20:30:00 | 2024-03-15 21:25:00 | SF1                 |          1 |           7 |
| Channel3     | 2024-03-09 18:30:00 | 2024-03-09 19:10:00 | アクション1         |          1 |           5 |
| Channel4     | 2024-03-10 20:00:00 | 2024-03-10 20:35:00 | アクション2         |          3 |           2 |
| Channel6     | 2024-03-12 19:00:00 | 2024-03-12 20:00:00 | アニメ1             |          1 |          10 |
| Channel5     | 2024-03-11 15:30:00 | 2024-03-11 15:55:00 | コメディ1           |          1 |           1 |
| Channel7     | 2024-03-13 16:00:00 | 2024-03-13 18:00:00 | スポーツ1           |          1 |           1 |
| Channel1     | 2024-03-07 22:00:00 | 2024-03-07 22:30:00 | ドラマ1             |          1 |           1 |
| Channel2     | 2024-03-08 22:30:00 | 2024-03-09 23:15:00 | ドラマ2             |          2 |           3 |
| Channel10    | 2024-03-16 12:30:00 | 2024-03-16 12:50:00 | ファンタジー1       |          1 |           1 |
| Channel8     | 2024-03-14 13:00:00 | 2024-03-14 13:50:00 | ホラー1             |          1 |           3 |
+--------------+---------------------+---------------------+---------------------+------------+-------------+
10 rows in set (0.00 sec)

## ステップ3

1. よく見られているエピソードを知りたいです。エピソード視聴数トップ3のエピソードタイトルと視聴数を取得してください
```sql
SELECT title, views
FROM episodes
ORDER BY views DESC
LIMIT 3;
``
2. よく見られているエピソードの番組情報やシーズン情報も合わせて知りたいです。エピソード視聴数トップ3の番組タイトル、シーズン数、エピソード数、エピソードタイトル、視聴数を取得してください
```sql
SELECT p.title AS program_title, s.season_number, e.episode_number, e.title AS episode_title, e.views
FROM episodes e
JOIN seasons s on e.season_id = s.id
JOIN programs p on s.program_id = p.id
ORDER BY e.views DESC
LIMIT 3;
```
3. 本日の番組表を表示するために、本日、どのチャンネルの、何時から、何の番組が放送されるのかを知りたいです。本日放送される全ての番組に対して、チャンネル名、放送開始時刻(日付+時間)、放送終了時刻、シーズン数、エピソード数、エピソードタイトル、エピソード詳細を取得してください。なお、番組の開始時刻が本日のものを本日方法される番組とみなすものとします
```sql
SELECT c.name, ps.start_time, ps.end_time, s.season_number, e.episode_number, e.title, e.detail
FROM program_schedules ps
JOIN channels c on ps.channel_id = c.id
JOIN episodes e on ps.episode_id = e.id
JOIN seasons s on e.season_id = s.id
-- 開始時刻が今日の日付だったら
WHERE DATE (ps.start_time) = CURDATE()
ORDER BY ps.start_time;
```
4. ドラマというチャンネルがあったとして、ドラマのチャンネルの番組表を表示するために、本日から一週間分、何日の何時から何の番組が放送されるのかを知りたいです。ドラマのチャンネルに対して、放送開始時刻、放送終了時刻、シーズン数、エピソード数、エピソードタイトル、エピソード詳細を本日から一週間分取得してください
```sql
SELECT ps.start_time, ps.end_time, s.season_number, e.episode_number, e.title, e.detail
FROM program_schedules ps
JOIN episodes e on ps.episode_id = e.id
JOIN seasons s on e.season_id = s.id
JOIN programs p on s.program_id = s.id
WHERE p.channel_id = (SELECT id FROM channels c WHERE c.name = 'ドラマ')
AND ps.start_time BETWEEN CURDATE() AND DATE_ADD(CURDATE(), INTERVAL 1 WEEK)
ORDER BY ps.start_time;
```
5. (advanced) 直近一週間で最も見られた番組が知りたいです。直近一週間に放送された番組の中で、エピソード視聴数合計トップ2の番組に対して、番組タイトル、視聴数を取得してください
```sql
SELECT p.title, SUM(e.views) AS sum_views
FROM program_schedules ps
JOIN episodes e on ps.episode_id = e.id
JOIN seasons s on e.season_id = s.id
JOIN programs p on s.program_id = p.id
WHERE ps.start_time BETWEEN DATE_SUB(CURDATE(), INTERVAL 1 WEEK) AND CURDATE()
GROUP BY p.title
ORDER BY sum_views DESC
LIMIT 2;
```
6. (advanced) ジャンルごとの番組の視聴数ランキングを知りたいです。番組の視聴数ランキングはエピソードの平均視聴数ランキングとします。ジャンルごとに視聴数トップの番組に対して、ジャンル名、番組タイトル、エピソード平均視聴数を取得してください。
```sql
-- １つしか取れない
SELECT g.name, p.title, AVG(e.views) AS average_views
FROM episodes e
JOIN seasons s on e.season_id = s.id
JOIN programs p on s.program_id = p.id
JOIN genres g on p.genre_id = g.id
GROUP BY g.name, p.title
-- 平均視聴数がMAXのものを取得したい
HAVING AVG(e.views) = (
    SELECT MAX(average_views)
	FROM (
	SELECT AVG(e.views) AS average_views
	FROM episodes e
	JOIN seasons s on e.season_id = s.id
	JOIN programs p on s.program_id = p.id
	JOIN genres g on p.genre_id = g.id
	GROUP BY g.name, p.title
	) subquery_having
)
ORDER BY g.name;
```
