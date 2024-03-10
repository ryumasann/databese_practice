-- 1.よく見られているエピソードを知りたいです。エピソード視聴数トップ3のエピソードタイトルと視聴数を取得してください
SELECT episode_name, viewer
FROM episodes
ORDER BY viewer DESC
LIMIT 3;

+------------------+--------+
| episode_name     | viewer |
+------------------+--------+
| 試合開始         | 200000 |
| エピソード7      | 160000 |
| 最終話           | 150000 |
+------------------+--------+
3 rows in set (0.01 sec)

-- 2.よく見られているエピソードの番組情報やシーズン情報も合わせて知りたいです。エピソード視聴数トップ3の番組タイトル、シーズン数、エピソード数、エピソードタイトル、視聴数を取得してください
SELECT p.title_name,
       e.season_num,
       e.episode_num,
       e.episode_name,
       e.viewer
FROM episodes AS epi
JOIN programs AS p ON e.title_name = p.title_name AND e.season_num = p.season_num
ORDER BY e.viewer DESC
LIMIT 3;
+---------------+------------+-------------+------------------+--------+
| program_title | season_num | episode_num | episode_name     | viewer |
+---------------+------------+-------------+------------------+--------+
| スポーツ1     |          1 |           1 | 試合開始         | 200000 |
| SF1           |          1 |           7 | エピソード7      | 160000 |
| アニメ1       |          1 |          10 | 最終話           | 150000 |
+---------------+------------+-------------+------------------+--------+
3 rows in set (0.01 sec)


-- 本日の番組表を表示するために、本日、どのチャンネルの、何時から、何の番組が放送されるのかを知りたいです。本日放送される全ての番組に対して、チャンネル名、放送開始時刻(日付+時間)、放送終了時刻、シーズン数、エピソード数、エピソードタイトル、エピソード詳細を取得してください。なお、番組の開始時刻が本日のものを本日方法される番組とみなすものとします

-- ドラマというチャンネルがあったとして、ドラマのチャンネルの番組表を表示するために、本日から一週間分、何日の何時から何の番組が放送されるのかを知りたいです。ドラマのチャンネルに対して、放送開始時刻、放送終了時刻、シーズン数、エピソード数、エピソードタイトル、エピソード詳細を本日から一週間分取得してください