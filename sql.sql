
GRANT ALL PRIVILEGES ON *.* TO 'ryuma'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
CREATE USER 'ryuma'@'localhost' IDENTIFIED BY 'Imas87651641';
SELECT User, Host FROM mysql.user;
USE practice;
SHOE DATABASE
SELECT User, Host FROM mysql.user;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    birthdate DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

SHOW TABLES;
ALTER TABLE users ADD COLUMN phone_number VARCHAR(20);
SHOW COLUMNS FROM users;

mysql> SHOW COLUMNS FROM users;
+--------------+--------------+------+-----+-------------------+-------------------+
| Field        | Type         | Null | Key | Default           | Extra             |
+--------------+--------------+------+-----+-------------------+-------------------+
| user_id      | int          | NO   | PRI | NULL              | auto_increment    |
| username     | varchar(255) | NO   |     | NULL              |                   |
| email        | varchar(255) | NO   |     | NULL              |                   |
| birthdate    | date         | YES  |     | NULL              |                   |
| created_at   | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
| phone_number | varchar(20)  | YES  |     | NULL              |                   |
+--------------+--------------+------+-----+-------------------+-------------------+
6 rows in set (0.00 sec)

mysql> SHOW COLUMNS FROM users;
+--------------+--------------+------+-----+-------------------+-------------------+
| Field        | Type         | Null | Key | Default           | Extra             |
+--------------+--------------+------+-----+-------------------+-------------------+
| user_id      | int          | NO   | PRI | NULL              | auto_increment    |
| username     | varchar(255) | NO   |     | NULL              |                   |
| email        | varchar(255) | NO   |     | NULL              |                   |
| birthdate    | date         | YES  |     | NULL              |                   |
| created_at   | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
| phone_number | varchar(20)  | YES  |     | NULL              |                   |
+--------------+--------------+------+-----+-------------------+-------------------+
6 rows in set (0.01 sec)


DROP TABLE テーブル名;
ALTER TABLE users DROP COLUMN phone_number;

INSERT INTO users (username, email)
VALUES ('John Doe', 'john@example.com');

UPDATE users
SET username = '平山'
WHERE id = 1;

DELETE FROM users;