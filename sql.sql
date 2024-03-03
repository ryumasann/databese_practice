GRANT ALL PRIVILEGES ON *.* TO 'ryuma' @'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;

CREATE USER 'ryuma' @'localhost' IDENTIFIED BY 'Imas87651641';

SELECT
    User,
    Host
FROM
    mysql.user;

USE practice;

SHOE DATABASE
SELECT
    User,
    Host
FROM
    mysql.user;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    birthdate DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) SHOW TABLES;

ALTER TABLE
    users
ADD
    COLUMN phone_number VARCHAR(20);

SHOW COLUMNS
FROM
    users;

mysql > SHOW COLUMNS
FROM
    users;

+ --------------+--------------+------+-----+-------------------+-------------------+
| Field | Type | Null | Key | Default | Extra | + --------------+--------------+------+-----+-------------------+-------------------+
| user_id | int | NO | PRI | NULL | auto_increment | | username | varchar(255) | NO | | NULL | | | email | varchar(255) | NO | | NULL | | | birthdate | date | YES | | NULL | | | created_at | timestamp | YES | | CURRENT_TIMESTAMP | DEFAULT_GENERATED | | phone_number | varchar(20) | YES | | NULL | | + --------------+--------------+------+-----+-------------------+-------------------+
6 rows in
set
    (0.00 sec) mysql > SHOW COLUMNS
FROM
    users;

+ --------------+--------------+------+-----+-------------------+-------------------+
| Field | Type | Null | Key | Default | Extra | + --------------+--------------+------+-----+-------------------+-------------------+
| user_id | int | NO | PRI | NULL | auto_increment | | username | varchar(255) | NO | | NULL | | | email | varchar(255) | NO | | NULL | | | birthdate | date | YES | | NULL | | | created_at | timestamp | YES | | CURRENT_TIMESTAMP | DEFAULT_GENERATED | | phone_number | varchar(20) | YES | | NULL | | + --------------+--------------+------+-----+-------------------+-------------------+
6 rows in
set
    (0.01 sec) DROP TABLE テーブル名;

ALTER TABLE
    users DROP COLUMN phone_number;

INSERT INTO
    users (username, email)
VALUES
    ('John Doe', 'john@example.com');

UPDATE
    users
SET
    username = '平山'
WHERE
    id = 1;

DELETE FROM
    users;

02 / 29 / 24 19 :47 :36 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main sudo mysql Welcome to the MySQL monitor.Commands
end with;

or \ g.Your MySQL connection id is 14 Server version: 8.0.36 - 0ubuntu0.22.04.1 (Ubuntu) Copyright (c) 2000,
2024,
Oracle
and /
or its affiliates.Oracle is a registered trademark of Oracle Corporation
and /
or its affiliates.Other names may be trademarks of their respective owners.Type 'help;'
or '\h' for help.Type '\c' to clear the current input statement.mysql > mysql > mysql > ls -> q -> ^ C mysql > quit Bye 02 / 29 / 24 19 :48 :56 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main sudo mysql_secure_installation Securing the MySQL server deployment.Connecting to MySQL using a blank password.The 'validate_password' component is installed on the server.The subsequent steps will run with the existing configuration of the component.Skipping password
set
    for root as authentication with auth_socket is used by default.If you would like to use password authentication instead,
    this can be done with the "ALTER_USER" command.See https: / / dev.mysql.com / doc / refman / 8.0 / en / alter - user.html #alter-user-password-management for more information.
    By default,
    a MySQL installation has an anonymous user,
    allowing anyone to log into MySQL without
having
    to have a user account created for them.This is intended only for testing,
    and to make the installation
go
    a bit smoother.You should remove them before moving into a production environment.Remove anonymous users ? (Press y | Y for Yes, any other key for No): y Success.Normally,
    root should only be allowed to connect
from
    'localhost'.This ensures that someone cannot guess at the root password
from
    the network.Disallow root login remotely ? (Press y | Y for Yes, any other key for No): y Success.By default,
    MySQL comes with a database named 'test' that anyone can access.This is also intended only for testing,
    and should be removed before moving into a production environment.Remove test database
    and access to it ? (Press y | Y for Yes, any other key for No): y - Dropping test database...Success.- Removing privileges on test database...Success.Reloading the privilege tables will ensure that all changes made so far will take effect immediately.Reload privilege tables now ? (Press y | Y for Yes, any other key for No): y Success.All done ! 02 / 29 / 24 19 :49 :12 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main 02 / 29 / 24 19 :49 :13 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main 02 / 29 / 24 19 :49 :13 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main sudo mysql Welcome to the MySQL monitor.Commands
end with;

or \ g.Your MySQL connection id is 20 Server version: 8.0.36 - 0ubuntu0.22.04.1 (Ubuntu) Copyright (c) 2000,
2024,
Oracle
and /
or its affiliates.Oracle is a registered trademark of Oracle Corporation
and /
or its affiliates.Other names may be trademarks of their respective owners.Type 'help;'
or '\h' for help.Type '\c' to clear the current input statement.mysql > flush privileges ->;

Query OK,
0 rows affected (0.01 sec) mysql > ALTER USER 'root' @'localhost' IDENTIFIED BY 'Imas87651641';

Query OK,
0 rows affected (0.01 sec) mysql > quit Bye 02 / 29 / 24 20 :06 :04 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main mysql - u root - p Enter password: Welcome to the MySQL monitor.Commands
end with;

or \ g.Your MySQL connection id is 21 Server version: 8.0.36 - 0ubuntu0.22.04.1 (Ubuntu) Copyright (c) 2000,
2024,
Oracle
and /
or its affiliates.Oracle is a registered trademark of Oracle Corporation
and /
or its affiliates.Other names may be trademarks of their respective owners.Type 'help;'
or '\h' for help.Type '\c' to clear the current input statement.mysql > mysql > mysql > mysql > ls ->;

ERROR 1064 (42000): You have an error in your SQL syntax;

check the manual that corresponds to your MySQL server version for the right syntax to use near 'ls' at line 1 mysql > list;

ERROR 1064 (42000): You have an error in your SQL syntax;

check the manual that corresponds to your MySQL server version for the right syntax to use near 'list' at line 1 mysql > quit Bye 02 / 29 / 24 20 :12 :42 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main service mysql status * / usr / bin / mysqladmin Ver 8.0.36 - 0ubuntu0.22.04.1 for Linux on x86_64 ((Ubuntu)) Copyright (c) 2000,
2024,
Oracle
and /
or its affiliates.Oracle is a registered trademark of Oracle Corporation
and /
or its affiliates.Other names may be trademarks of their respective owners.Server version 8.0.36 - 0ubuntu0.22.04.1 Protocol version 10 Connection Localhost via UNIX socket UNIX socket / var / run / mysqld / mysqld.sock Uptime: 27 min 55 sec Threads: 2 Questions: 37 Slow queries: 0 Opens: 144 Flush tables: 3 Open tables: 63 Queries per second avg: 0.022 02 / 29 / 24 20 :13 :09 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main mysql.server restart zsh: command not found: mysql.server 02 / 29 / 24 20 :13 :21 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main / etc / init.d / mysqld restart zsh: correct '/etc/init.d/mysqld' to '/etc/init.d/mysql' [nyae] ? y * Stopping MySQL database server mysqld [ OK ] * Starting MySQL database server mysqld su: warning: cannot change directory to / nonexistent: No such file
or directory [ OK ] 02 / 29 / 24 20 :13 :52 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main 02 / 29 / 24 20 :13 :54 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main 02 / 29 / 24 20 :13 :55 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main mysql - u root - p Enter password: Welcome to the MySQL monitor.Commands
end with;

or \ g.Your MySQL connection id is 10 Server version: 8.0.36 - 0ubuntu0.22.04.1 (Ubuntu) Copyright (c) 2000,
2024,
Oracle
and /
or its affiliates.Oracle is a registered trademark of Oracle Corporation
and /
or its affiliates.Other names may be trademarks of their respective owners.Type 'help;'
or '\h' for help.Type '\c' to clear the current input statement.mysql > exit Bye 02 / 29 / 24 20 :17 :25 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main ss - atn State Recv - Q Send - Q Local Address :Port Peer Address :Port Process LISTEN 0 511 127.0.0.1 :41541 0.0.0.0: * LISTEN 0 70 127.0.0.1 :33060 0.0.0.0: * LISTEN 0 128 0.0.0.0 :22 0.0.0.0: * LISTEN 0 151 127.0.0.1 :3306 0.0.0.0: * ESTAB 0 0 127.0.0.1 :59158 127.0.0.1 :41541 ESTAB 0 0 127.0.0.1 :59162 127.0.0.1 :41541 ESTAB 0 0 127.0.0.1 :41541 127.0.0.1 :59162 ESTAB 0 203 127.0.0.1 :41541 127.0.0.1 :59158 LISTEN 0 128 [::] :22 [::]: * 02 / 29 / 24 20 :18 :25 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main sudo mysql_secure_installation Securing the MySQL server deployment.Connecting to MySQL using a blank password.The 'validate_password' component is installed on the server.The subsequent steps will run with the existing configuration of the component.Skipping password
set
    for root as authentication with auth_socket is used by default.If you would like to use password authentication instead,
    this can be done with the "ALTER_USER" command.See https: / / dev.mysql.com / doc / refman / 8.0 / en / alter - user.html #alter-user-password-management for more information.
    By default,
    a MySQL installation has an anonymous user,
    allowing anyone to log into MySQL without
having
    to have a user account created for them.This is intended only for testing,
    and to make the installation
go
    a bit smoother.You should remove them before moving into a production environment.Remove anonymous users ? (Press y | Y for Yes, any other key for No): y Success.Normally,
    root should only be allowed to connect
from
    'localhost'.This ensures that someone cannot guess at the root password
from
    the network.Disallow root login remotely ? (Press y | Y for Yes, any other key for No): n...skipping.By default,
    MySQL comes with a database named 'test' that anyone can access.This is also intended only for testing,
    and should be removed before moving into a production environment.Remove test database
    and access to it ? (Press y | Y for Yes, any other key for No): y - Dropping test database...Success.- Removing privileges on test database...Success.Reloading the privilege tables will ensure that all changes made so far will take effect immediately.Reload privilege tables now ? (Press y | Y for Yes, any other key for No): y Success.All done ! 02 / 29 / 24 20 :20 :46 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main / etc / init.d / mysql restart * Stopping MySQL database server mysqld [ OK ] * Starting MySQL database server mysqld su: warning: cannot change directory to / nonexistent: No such file
    or directory [ OK ] 02 / 29 / 24 20 :21 :12 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main sudo mysql Welcome to the MySQL monitor.Commands
end with;

or \ g.Your MySQL connection id is 12 Server version: 8.0.36 - 0ubuntu0.22.04.1 (Ubuntu) Copyright (c) 2000,
2024,
Oracle
and /
or its affiliates.Oracle is a registered trademark of Oracle Corporation
and /
or its affiliates.Other names may be trademarks of their respective owners.Type 'help;'
or '\h' for help.Type '\c' to clear the current input statement.mysql > ALTER USER 'root' @'localhost' IDENTIFIED WITH mysql_native_password BY 'Imas87651641';

ERROR 1819 (HY000): Your password does not satisfy the current policy requirements mysql > ALTER USER 'root' @'localhost' IDENTIFIED WITH mysql_native_password BY 'Im@s87651641';

Query OK,
0 rows affected (0.01 sec) mysql > FLUSH PRIVILEGES;

Query OK,
0 rows affected (0.01 sec) mysql > exit Bye 02 / 29 / 24 20 :23 :25 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main sudo mysql ERROR 1045 (28000): Access denied for user 'root' @'localhost' (using password: NO) 02 / 29 / 24 20 :23 :29 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main mysql - u root - p Enter password: Welcome to the MySQL monitor.Commands
end with;

or \ g.Your MySQL connection id is 14 Server version: 8.0.36 - 0ubuntu0.22.04.1 (Ubuntu) Copyright (c) 2000,
2024,
Oracle
and /
or its affiliates.Oracle is a registered trademark of Oracle Corporation
and /
or its affiliates.Other names may be trademarks of their respective owners.Type 'help;'
or '\h' for help.Type '\c' to clear the current input statement.mysql > exit Bye 02 / 29 / 24 20 :23 :45 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main CREATE DATABASE mydatabase;

02 / 29 / 24 20 :34 :30 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main mysql - u root - p Enter password: Welcome to the MySQL monitor.Commands
end with;

or \ g.Your MySQL connection id is 18 Server version: 8.0.36 - 0ubuntu0.22.04.1 (Ubuntu) Copyright (c) 2000,
2024,
Oracle
and /
or its affiliates.Oracle is a registered trademark of Oracle Corporation
and /
or its affiliates.Other names may be trademarks of their respective owners.Type 'help;'
or '\h' for help.Type '\c' to clear the current input statement.mysql > CREATE DATABASE mydatabase;

Query OK,
1 row affected (0.02 sec) mysql > USE mydatabase Database changed mysql > ls ->;

ERROR 1064 (42000): You have an error in your SQL syntax;

check the manual that corresponds to your MySQL server version for the right syntax to use near 'ls' at line 1 mysql > list ->;

ERROR 1064 (42000): You have an error in your SQL syntax;

check the manual that corresponds to your MySQL server version for the right syntax to use near 'list' at line 1 mysql > show;

ERROR 1064 (42000): You have an error in your SQL syntax;

check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1 mysql > exit Bye 02 / 29 / 24 20 :35 :18 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main mysql - u root - p Enter password: Welcome to the MySQL monitor.Commands
end with;

or \ g.Your MySQL connection id is 19 Server version: 8.0.36 - 0ubuntu0.22.04.1 (Ubuntu) Copyright (c) 2000,
2024,
Oracle
and /
or its affiliates.Oracle is a registered trademark of Oracle Corporation
and /
or its affiliates.Other names may be trademarks of their respective owners.Type 'help;'
or '\h' for help.Type '\c' to clear the current input statement.mysql > mysql > SHOW DATABASES;

+ --------------------+
| Database | + --------------------+
| information_schema | | mydatabase | | mysql | | performance_schema | | sys | + --------------------+
5 rows in
set
    (0.00 sec) mysql > DROP mydatabase;

ERROR 1064 (42000): You have an error in your SQL syntax;

check the manual that corresponds to your MySQL server version for the right syntax to use near 'mydatabase' at line 1 mysql > DROP DATABASE mydatabase;

Query OK,
0 rows affected (0.01 sec) mysql > SHOW DATABASES;

+ --------------------+
| Database | + --------------------+
| information_schema | | mysql | | performance_schema | | sys | + --------------------+
4 rows in
set
    (0.00 sec) mysql > CREATE DATABASE practice;

Query OK,
1 row affected (0.01 sec) mysql > SHOW DATABASES;

+ --------------------+
| Database | + --------------------+
| information_schema | | mysql | | performance_schema | | practice | | sys | + --------------------+
5 rows in
set
    (0.00 sec) mysql > CREATE USER 'ryuma' @'localhost' IDENTIFIED BY 'Im@s87651641';

Query OK,
0 rows affected (0.01 sec) mysql >
SELECT
    User,
    Host
FROM
    mysql.user;

+ ------------------+-----------+
| User | Host | + ------------------+-----------+
| debian - sys - maint | localhost | | mysql.infoschema | localhost | | mysql.session | localhost | | mysql.sys | localhost | | root | localhost | | ryuma | localhost | + ------------------+-----------+
6 rows in
set
    (0.00 sec) mysql > GRANT ALL PRIVILEGES ON *.* TO 'ryuma' @'localhost' WITH GRANT OPTION;

Query OK,
0 rows affected (0.02 sec) mysql > FLUSH PRIVILEGES;

Query OK,
0 rows affected (0.00 sec) mysql > DROP USER 'ryuma' @'localhost' ->;

Query OK,
0 rows affected (0.01 sec) mysql > SHOW USERS ->;

ERROR 1064 (42000): You have an error in your SQL syntax;

check the manual that corresponds to your MySQL server version for the right syntax to use near 'USERS' at line 1 mysql >
SELECT
    User,
    Host
FROM
    mysql.user;

+ ------------------+-----------+
| User | Host | + ------------------+-----------+
| debian - sys - maint | localhost | | mysql.infoschema | localhost | | mysql.session | localhost | | mysql.sys | localhost | | root | localhost | + ------------------+-----------+
5 rows in
set
    (0.00 sec) mysql > bck: ^ C mysql > CREATE USER 'example_user' @'localhost' IDENTIFIED BY 'example_password';

ERROR 1819 (HY000): Your password does not satisfy the current policy requirements mysql > DROP USER 'example_user' @'localhost' ->;

ERROR 1396 (HY000): Operation DROP USER failed for 'example_user' @'localhost' mysql > DROP USER 'example_user' @'localhost';

ERROR 1396 (HY000): Operation DROP USER failed for 'example_user' @'localhost' mysql > exit Bye 02 / 29 / 24 21 :51 :35 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main mysql - u root - p Enter password: Welcome to the MySQL monitor.Commands
end with;

or \ g.Your MySQL connection id is 22 Server version: 8.0.36 - 0ubuntu0.22.04.1 (Ubuntu) Copyright (c) 2000,
2024,
Oracle
and /
or its affiliates.Oracle is a registered trademark of Oracle Corporation
and /
or its affiliates.Other names may be trademarks of their respective owners.Type 'help;'
or '\h' for help.Type '\c' to clear the current input statement.mysql >
SELECT
    User,
    Host
FROM
    mysql.user;

+ ------------------+-----------+
| User | Host | + ------------------+-----------+
| debian - sys - maint | localhost | | mysql.infoschema | localhost | | mysql.session | localhost | | mysql.sys | localhost | | root | localhost | + ------------------+-----------+
5 rows in
set
    (0.00 sec) mysql >
SELECT
    User,
    Host
FROM
    mysql.user;

^ C mysql > CREATE USER 'ryuma' @'localhost' IDENTIFIED BY 'Imas87651641';

ERROR 1819 (HY000): Your password does not satisfy the current policy requirements mysql > CREATE USER 'ryuma' @'localhost' IDENTIFIED BY 'Im@s87651641';

Query OK,
0 rows affected (0.01 sec) mysql >
SELECT
    User,
    Host
FROM
    mysql.user;

+ ------------------+-----------+
| User | Host | + ------------------+-----------+
| debian - sys - maint | localhost | | mysql.infoschema | localhost | | mysql.session | localhost | | mysql.sys | localhost | | root | localhost | | ryuma | localhost | + ------------------+-----------+
6 rows in
set
    (0.00 sec) mysql > GRANT ALL PRIVILEGES ON *.* TO 'ryuma' @'localhost' WITH GRANT OPTION;

Query OK,
0 rows affected (0.02 sec) mysql > FLUSH PRIVILEGES;

Query OK,
0 rows affected (0.00 sec) mysql >
SELECT
    User,
    Host
FROM
    mysql.user;

+ ------------------+-----------+
| User | Host | + ------------------+-----------+
| debian - sys - maint | localhost | | mysql.infoschema | localhost | | mysql.session | localhost | | mysql.sys | localhost | | root | localhost | | ryuma | localhost | + ------------------+-----------+
6 rows in
set
    (0.00 sec) mysql > exit Bye 02 / 29 / 24 21 :55 :34 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main mysql - u ryuma - p Enter password: Welcome to the MySQL monitor.Commands
end with;

or \ g.Your MySQL connection id is 23 Server version: 8.0.36 - 0ubuntu0.22.04.1 (Ubuntu) Copyright (c) 2000,
2024,
Oracle
and /
or its affiliates.Oracle is a registered trademark of Oracle Corporation
and /
or its affiliates.Other names may be trademarks of their respective owners.Type 'help;'
or '\h' for help.Type '\c' to clear the current input statement.mysql > SHOE DATABASES ->;

C ^ C mysql > SHOW DATABASES;

+ --------------------+
| Database | + --------------------+
| information_schema | | mysql | | performance_schema | | practice | | sys | + --------------------+
5 rows in
set
    (0.01 sec) mysql > USE practice;

Database changed mysql > USE practice;

F ^ C mysql >
SELECT
    User,
    Host
FROM
    mysql.user;

^ C mysql > CREATE TABLE users (
    -> user_id INT AUTO_INCREMENT PRIMARY KEY,
    -> username VARCHAR(255) NOT NULL,
    -> email VARCHAR(255) NOT NULL,
    -> birthdate DATE,
    -> created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ->
);

Query OK,
0 rows affected (0.07 sec) mysql > SHOW TABLES ->;

+ --------------------+
| Tables_in_practice | + --------------------+
| users | + --------------------+
1 row in
set
    (0.00 sec) mysql > ^ C mysql >
ALTER TABLE
    users
ADD
    COLUMN phone_number VARCHAR(20);

Query OK,
0 rows affected (0.05 sec) Records: 0 Duplicates: 0 Warnings: 0 mysql > ^ C mysql > DESCRIBE users;

+ --------------+--------------+------+-----+-------------------+-------------------+
| Field | Type | Null | Key | Default | Extra | + --------------+--------------+------+-----+-------------------+-------------------+
| user_id | int | NO | PRI | NULL | auto_increment | | username | varchar(255) | NO | | NULL | | | email | varchar(255) | NO | | NULL | | | birthdate | date | YES | | NULL | | | created_at | timestamp | YES | | CURRENT_TIMESTAMP | DEFAULT_GENERATED | | phone_number | varchar(20) | YES | | NULL | | + --------------+--------------+------+-----+-------------------+-------------------+
6 rows in
set
    (0.02 sec) mysql > SHOW COLUMNS
FROM
    users;

+ --------------+--------------+------+-----+-------------------+-------------------+
| Field | Type | Null | Key | Default | Extra | + --------------+--------------+------+-----+-------------------+-------------------+
| user_id | int | NO | PRI | NULL | auto_increment | | username | varchar(255) | NO | | NULL | | | email | varchar(255) | NO | | NULL | | | birthdate | date | YES | | NULL | | | created_at | timestamp | YES | | CURRENT_TIMESTAMP | DEFAULT_GENERATED | | phone_number | varchar(20) | YES | | NULL | | + --------------+--------------+------+-----+-------------------+-------------------+
6 rows in
set
    (0.00 sec) mysql > SHOW COLUMNS
FROM
    users;

+ --------------+--------------+------+-----+-------------------+-------------------+
| Field | Type | Null | Key | Default | Extra | + --------------+--------------+------+-----+-------------------+-------------------+
| user_id | int | NO | PRI | NULL | auto_increment | | username | varchar(255) | NO | | NULL | | | email | varchar(255) | NO | | NULL | | | birthdate | date | YES | | NULL | | | created_at | timestamp | YES | | CURRENT_TIMESTAMP | DEFAULT_GENERATED | | phone_number | varchar(20) | YES | | NULL | | + --------------+--------------+------+-----+-------------------+-------------------+
6 rows in
set
    (0.00 sec) mysql > SHOW COLUMNS
FROM
    users;

+ --------------+--------------+------+-----+-------------------+-------------------+
| Field | Type | Null | Key | Default | Extra | + --------------+--------------+------+-----+-------------------+-------------------+
| user_id | int | NO | PRI | NULL | auto_increment | | username | varchar(255) | NO | | NULL | | | email | varchar(255) | NO | | NULL | | | birthdate | date | YES | | NULL | | | created_at | timestamp | YES | | CURRENT_TIMESTAMP | DEFAULT_GENERATED | | phone_number | varchar(20) | YES | | NULL | | + --------------+--------------+------+-----+-------------------+-------------------+
6 rows in
set
    (0.00 sec) mysql > SHOW COLUMNS
FROM
    users;

+ --------------+--------------+------+-----+-------------------+-------------------+
| Field | Type | Null | Key | Default | Extra | + --------------+--------------+------+-----+-------------------+-------------------+
| user_id | int | NO | PRI | NULL | auto_increment | | username | varchar(255) | NO | | NULL | | | email | varchar(255) | NO | | NULL | | | birthdate | date | YES | | NULL | | | created_at | timestamp | YES | | CURRENT_TIMESTAMP | DEFAULT_GENERATED | | phone_number | varchar(20) | YES | | NULL | | + --------------+--------------+------+-----+-------------------+-------------------+
6 rows in
set
    (0.00 sec) mysql > SHOW COLUMNS
FROM
    users;

+ --------------+--------------+------+-----+-------------------+-------------------+
| Field | Type | Null | Key | Default | Extra | + --------------+--------------+------+-----+-------------------+-------------------+
| user_id | int | NO | PRI | NULL | auto_increment | | username | varchar(255) | NO | | NULL | | | email | varchar(255) | NO | | NULL | | | birthdate | date | YES | | NULL | | | created_at | timestamp | YES | | CURRENT_TIMESTAMP | DEFAULT_GENERATED | | phone_number | varchar(20) | YES | | NULL | | + --------------+--------------+------+-----+-------------------+-------------------+
6 rows in
set
    (0.00 sec) mysql > SHOW COLUMNS
FROM
    users;

+ --------------+--------------+------+-----+-------------------+-------------------+
| Field | Type | Null | Key | Default | Extra | + --------------+--------------+------+-----+-------------------+-------------------+
| user_id | int | NO | PRI | NULL | auto_increment | | username | varchar(255) | NO | | NULL | | | email | varchar(255) | NO | | NULL | | | birthdate | date | YES | | NULL | | | created_at | timestamp | YES | | CURRENT_TIMESTAMP | DEFAULT_GENERATED | | phone_number | varchar(20) | YES | | NULL | | + --------------+--------------+------+-----+-------------------+-------------------+
6 rows in
set
    (0.00 sec) mysql > SHOW COLUMNS
FROM
    users;

+ --------------+--------------+------+-----+-------------------+-------------------+
| Field | Type | Null | Key | Default | Extra | + --------------+--------------+------+-----+-------------------+-------------------+
| user_id | int | NO | PRI | NULL | auto_increment | | username | varchar(255) | NO | | NULL | | | email | varchar(255) | NO | | NULL | | | birthdate | date | YES | | NULL | | | created_at | timestamp | YES | | CURRENT_TIMESTAMP | DEFAULT_GENERATED | | phone_number | varchar(20) | YES | | NULL | | + --------------+--------------+------+-----+-------------------+-------------------+
6 rows in
set
    (0.00 sec) mysql > SHOW COLUMNS
FROM
    users;

+ --------------+--------------+------+-----+-------------------+-------------------+
| Field | Type | Null | Key | Default | Extra | + --------------+--------------+------+-----+-------------------+-------------------+
| user_id | int | NO | PRI | NULL | auto_increment | | username | varchar(255) | NO | | NULL | | | email | varchar(255) | NO | | NULL | | | birthdate | date | YES | | NULL | | | created_at | timestamp | YES | | CURRENT_TIMESTAMP | DEFAULT_GENERATED | | phone_number | varchar(20) | YES | | NULL | | + --------------+--------------+------+-----+-------------------+-------------------+
6 rows in
set
    (0.01 sec) mysql > mysql > SHOW COLUMNS
FROM
    users;

+ --------------+--------------+------+-----+-------------------+-------------------+
| Field | Type | Null | Key | Default | Extra | + --------------+--------------+------+-----+-------------------+-------------------+
| user_id | int | NO | PRI | NULL | auto_increment | | username | varchar(255) | NO | | NULL | | | email | varchar(255) | NO | | NULL | | | birthdate | date | YES | | NULL | | | created_at | timestamp | YES | | CURRENT_TIMESTAMP | DEFAULT_GENERATED | | phone_number | varchar(20) | YES | | NULL | | + --------------+--------------+------+-----+-------------------+-------------------+
6 rows in
set
    (0.00 sec) mysql > mysql > mysql > mysql >
ALTER TABLE
    users DROP COLUMN phone_number;

Query OK,
0 rows affected (0.02 sec) Records: 0 Duplicates: 0 Warnings: 0 mysql > DESCRIBE users ->;

+ ------------+--------------+------+-----+-------------------+-------------------+
| Field | Type | Null | Key | Default | Extra | + ------------+--------------+------+-----+-------------------+-------------------+
| user_id | int | NO | PRI | NULL | auto_increment | | username | varchar(255) | NO | | NULL | | | email | varchar(255) | NO | | NULL | | | birthdate | date | YES | | NULL | | | created_at | timestamp | YES | | CURRENT_TIMESTAMP | DEFAULT_GENERATED | + ------------+--------------+------+-----+-------------------+-------------------+
5 rows in
set
    (0.00 sec) mysql > DROP users;

ERROR 1064 (42000): You have an error in your SQL syntax;

check the manual that corresponds to your MySQL server version for the right syntax to use near 'users' at line 1 mysql > DROP TABLE users;

Query OK,
0 rows affected (0.02 sec) mysql > ^ C mysql >
ALTER TABLE
    users DROP COLUMN phone_number;

^ C mysql > SHOW TABLE ->;

ERROR 1064 (42000): You have an error in your SQL syntax;

check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1 mysql > SHOW TABLES;

Empty
set
    (0.00 sec) mysql > CREATE TABLE users (
        -> user_id INT AUTO_INCREMENT PRIMARY KEY,
        -> username VARCHAR(255) NOT NULL,
        -> email VARCHAR(255) NOT NULL,
        -> birthdate DATE,
        -> created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ->
    );

Query OK,
0 rows affected (0.04 sec) mysql > SHOW TABLES;

+ --------------------+
| Tables_in_practice | + --------------------+
| users | + --------------------+
1 row in
set
    (0.00 sec) mysql > mysql > mysql >
INSERT INTO
    users (name, email) ->
VALUES
    ('John Doe', 'john@example.com');

ERROR 1054 (42S22): Unknown column 'name' in 'field list' mysql >
INSERT INTO
    users (username, email)
VALUES
    ('John Doe', 'john@example.com');

Query OK,
1 row affected (0.01 sec) mysql > mysql >
SELECT
    *
FROM
    users ->;

+ ---------+----------+------------------+-----------+---------------------+
| user_id | username | email | birthdate | created_at | + ---------+----------+------------------+-----------+---------------------+
| 1 | John Doe | john @example.com | NULL | 2024 -02 -29 22 :32 :31 | + ---------+----------+------------------+-----------+---------------------+
1 row in
set
    (0.00 sec) mysql >
UPDATE
    users ->
SET
    username = '' ->
WHERE
    id = 1;

ERROR 1054 (42S22): Unknown column 'id' in 'where clause' mysql >
UPDATE
    users
SET
    username = 'hirayama'
WHERE
    user_id = 1;

Query OK,
1 row affected (0.01 sec) Rows matched: 1 Changed: 1 Warnings: 0 mysql >
SELECT
    *
FROM
    users ->;

+ ---------+----------+------------------+-----------+---------------------+
| user_id | username | email | birthdate | created_at | + ---------+----------+------------------+-----------+---------------------+
| 1 | hirayama | john @example.com | NULL | 2024 -02 -29 22 :32 :31 | + ---------+----------+------------------+-----------+---------------------+
1 row in
set
    (0.00 sec) mysql > ^ C mysql >
DELETE FROM
    users;

Query OK,
1 row affected (0.02 sec) mysql >
SELECT
    *
FROM
    users ->;

Empty
set
    (0.00 sec) mysql > exit Bye 02 / 29 / 24 22 :54 :21 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main touch sql.sql 02 / 29 / 24 22 :54 :41 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main git commit - m "sql" On branch main Your branch is up to date with 'origin/main'.Untracked files: (
        use "git add <file>..." to include in what will be committed
    ) sql.sql nothing added to commit but untracked files present (use "git add" to track) 02 / 29 / 24 22 :55 :13 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main git
add
.02 / 29 / 24 22 :55 :23 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main git commit - m "sql" [main c8c4246] sql 1 file changed,
    59 insertions(+) create mode 100644 sql.sql 02 / 29 / 24 22 :55 :25 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main git clone https: / / github.com / datacharmer / test_db.git Cloning into 'test_db'...remote: Enumerating objects: 121,
    done.remote: Counting objects: 100 % (1 / 1),
    done.remote: Total 121 (delta 0),
    reused 0 (delta 0),
    pack - reused 120 Receiving objects: 100 % (121 / 121),
    74.27 MiB | 14.00 MiB / s,
    done.Resolving deltas: 100 % (62 / 62),
    done.Updating files: 100 % (25 / 25),
    done.02 / 29 / 24 22 :56 :53 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main ls 1NF.txt 2NF.txt 3NF.txt BCNF.txt EC.pu EC_old.pu README.md entity.txt out sql.sql table.md test_db what_is_rdb.txt 02 / 29 / 24 22 :57 :21 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice main cd test_db Changelog images load_salaries1.dump sakila test_versions.sh README.md load_departments.dump load_salaries2.dump show_elapsed.sql employees.sql load_dept_emp.dump load_salaries3.dump sql_test.sh employees_partitioned.sql load_dept_manager.dump load_titles.dump test_employees_md5.sql employees_partitioned_5.1.sql load_employees.dump objects.sql test_employees_sha.sql 02 / 29 / 24 22 :57 :44 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice / test_db master mysql < employees.sql ERROR 1045 (28000): Access denied for user 'root' @'localhost' (using password: NO) 02 / 29 / 24 22 :58 :13 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice / test_db master mysql < employees.sql - p Enter password: INFO CREATING DATABASE STRUCTURE INFO storage engine: InnoDB INFO LOADING departments INFO LOADING employees INFO LOADING dept_emp INFO LOADING dept_manager INFO LOADING titles INFO LOADING salaries data_load_time_diff 00 :00 :33 02 / 29 / 24 22 :59 :08 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice / test_db master 02 / 29 / 24 23 :05 :53 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice / test_db master 02 / 29 / 24 23 :05 :54 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice / test_db master mysql - t < test_employees_md5.sql - p Enter password: + ----------------------+
    | INFO | + ----------------------+
    | TESTING INSTALLATION | + ----------------------+
    + --------------+------------------+----------------------------------+
    | table_name | expected_records | expected_crc | + --------------+------------------+----------------------------------+
    | departments | 9 | d1af5e170d2d1591d776d5638d71fc5f | | dept_emp | 331603 | ccf6fe516f990bdaa49713fc478701b7 | | dept_manager | 24 | 8720e2f0853ac9096b689c14664f847e | | employees | 300024 | 4ec56ab5ba37218d187cf6ab09ce1aa1 | | salaries | 2844047 | fd220654e95aea1b169624ffe3fca934 | | titles | 443308 | bfa016c472df68e70a03facafa1bc0a8 | + --------------+------------------+----------------------------------+
    + --------------+------------------+----------------------------------+
    | table_name | found_records | found_crc | + --------------+------------------+----------------------------------+
    | departments | 9 | d1af5e170d2d1591d776d5638d71fc5f | | dept_emp | 331603 | ccf6fe516f990bdaa49713fc478701b7 | | dept_manager | 24 | 8720e2f0853ac9096b689c14664f847e | | employees | 300024 | 4ec56ab5ba37218d187cf6ab09ce1aa1 | | salaries | 2844047 | fd220654e95aea1b169624ffe3fca934 | | titles | 443308 | bfa016c472df68e70a03facafa1bc0a8 | + --------------+------------------+----------------------------------+
    + --------------+---------------+-----------+
    | table_name | records_match | crc_match | + --------------+---------------+-----------+
    | departments | OK | ok | | dept_emp | OK | ok | | dept_manager | OK | ok | | employees | OK | ok | | salaries | OK | ok | | titles | OK | ok | + --------------+---------------+-----------+
    + ------------------+
    | computation_time | + ------------------+
    | 00 :00 :43 | + ------------------+
    + ---------+--------+
    | summary | result | + ---------+--------+
    | CRC | OK | | count | OK | + ---------+--------+
    02 / 29 / 24 23 :07 :40 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice / test_db master 02 / 29 / 24 23 :07 :40 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice / test_db master mysql - u ryuma - p < employees.sql Enter password: INFO CREATING DATABASE STRUCTURE INFO storage engine: InnoDB INFO LOADING departments INFO LOADING employees INFO LOADING dept_emp INFO LOADING dept_manager INFO LOADING titles INFO LOADING salaries data_load_time_diff 00 :00 :30 02 / 29 / 24 23 :18 :15 :RYUMA :root: / mnt / c / Users / im201 / Desktop / apprentice / databese_practice / test_db master mysql - u ryuma - p Enter password: Welcome to the MySQL monitor.Commands
end with;

or \ g.Your MySQL connection id is 28 Server version: 8.0.36 - 0ubuntu0.22.04.1 (Ubuntu) Copyright (c) 2000,
2024,
Oracle
and /
or its affiliates.Oracle is a registered trademark of Oracle Corporation
and /
or its affiliates.Other names may be trademarks of their respective owners.Type 'help;'
or '\h' for help.Type '\c' to clear the current input statement.mysql > SHOW DATABASES ->;

+ --------------------+
| Database | + --------------------+
| employees | | information_schema | | mysql | | performance_schema | | practice | | sys | + --------------------+
6 rows in
set
    (0.01 sec) mysql > use employees Reading table information for completion of table
    and column names You can turn off this feature to get a quicker startup with - A Database changed mysql > SHOW TABLES;

+ ----------------------+
| Tables_in_employees | + ----------------------+
| current_dept_emp | | departments | | dept_emp | | dept_emp_latest_date | | dept_manager | | employees | | salaries | | titles | + ----------------------+
8 rows in
set
    (0.01 sec) mysql > mysql >
SELECT
    *
FROM
    dept_manager ->;

+ --------+---------+------------+------------+
| emp_no | dept_no | from_date | to_date | + --------+---------+------------+------------+
| 110022 | d001 | 1985 -01 -01 | 1991 -10 -01 | | 110039 | d001 | 1991 -10 -01 | 9999 -01 -01 | | 110085 | d002 | 1985 -01 -01 | 1989 -12 -17 | | 110114 | d002 | 1989 -12 -17 | 9999 -01 -01 | | 110183 | d003 | 1985 -01 -01 | 1992 -03 -21 | | 110228 | d003 | 1992 -03 -21 | 9999 -01 -01 | | 110303 | d004 | 1985 -01 -01 | 1988 -09 -09 | | 110344 | d004 | 1988 -09 -09 | 1992 -08 -02 | | 110386 | d004 | 1992 -08 -02 | 1996 -08 -30 | | 110420 | d004 | 1996 -08 -30 | 9999 -01 -01 | | 110511 | d005 | 1985 -01 -01 | 1992 -04 -25 | | 110567 | d005 | 1992 -04 -25 | 9999 -01 -01 | | 110725 | d006 | 1985 -01 -01 | 1989 -05 -06 | | 110765 | d006 | 1989 -05 -06 | 1991 -09 -12 | | 110800 | d006 | 1991 -09 -12 | 1994 -06 -28 | | 110854 | d006 | 1994 -06 -28 | 9999 -01 -01 | | 111035 | d007 | 1985 -01 -01 | 1991 -03 -07 | | 111133 | d007 | 1991 -03 -07 | 9999 -01 -01 | | 111400 | d008 | 1985 -01 -01 | 1991 -04 -08 | | 111534 | d008 | 1991 -04 -08 | 9999 -01 -01 | | 111692 | d009 | 1985 -01 -01 | 1988 -10 -17 | | 111784 | d009 | 1988 -10 -17 | 1992 -09 -08 | | 111877 | d009 | 1992 -09 -08 | 1996 -01 -03 | | 111939 | d009 | 1996 -01 -03 | 9999 -01 -01 | + --------+---------+------------+------------+
24 rows in
set
    (0.01 sec) mysql > DESCRIBE dept_manager ->;

+ -----------+---------+------+-----+---------+-------+
| Field | Type | Null | Key | Default | Extra | + -----------+---------+------+-----+---------+-------+
| emp_no | int | NO | PRI | NULL | | | dept_no | char(4) | NO | PRI | NULL | | | from_date | date | NO | | NULL | | | to_date | date | NO | | NULL | | + -----------+---------+------+-----+---------+-------+
4 rows in
set
    (0.00 sec) mysql > mysql > DESCRIBE dept_manager ->;

+ -----------+---------+------+-----+---------+-------+
| Field | Type | Null | Key | Default | Extra | + -----------+---------+------+-----+---------+-------+
| emp_no | int | NO | PRI | NULL | | | dept_no | char(4) | NO | PRI | NULL | | | from_date | date | NO | | NULL | | | to_date | date | NO | | NULL | | + -----------+---------+------+-----+---------+-------+
4 rows in
set
    (0.00 sec) mysql > mysql > mysql >
SELECT
    emp_no
FROM
    dept_manager ->;

+ --------+
| emp_no | + --------+
| 110022 | | 110039 | | 110085 | | 110114 | | 110183 | | 110228 | | 110303 | | 110344 | | 110386 | | 110420 | | 110511 | | 110567 | | 110725 | | 110765 | | 110800 | | 110854 | | 111035 | | 111133 | | 111400 | | 111534 | | 111692 | | 111784 | | 111877 | | 111939 | + --------+
24 rows in
set
    (0.00 sec) mysql >
SELECT
    emp_no AS employee_no
FROM
    dept_manager;

+ -------------+
| employee_no | + -------------+
| 110022 | | 110039 | | 110085 | | 110114 | | 110183 | | 110228 | | 110303 | | 110344 | | 110386 | | 110420 | | 110511 | | 110567 | | 110725 | | 110765 | | 110800 | | 110854 | | 111035 | | 111133 | | 111400 | | 111534 | | 111692 | | 111784 | | 111877 | | 111939 | + -------------+
24 rows in
set
    (0.00 sec) mysql > mysql >
SELECT
    DISTINCT dept_no
FROM
    dept_manager;

+ ---------+
| dept_no | + ---------+
| d001 | | d002 | | d003 | | d004 | | d005 | | d006 | | d007 | | d008 | | d009 | + ---------+
9 rows in
set
    (0.00 sec) mysql >
SELECT
    DISTINCT emp_no
FROM
    dept_manager ->;

+ --------+
| emp_no | + --------+
| 110022 | | 110039 | | 110085 | | 110114 | | 110183 | | 110228 | | 110303 | | 110344 | | 110386 | | 110420 | | 110511 | | 110567 | | 110725 | | 110765 | | 110800 | | 110854 | | 111035 | | 111133 | | 111400 | | 111534 | | 111692 | | 111784 | | 111877 | | 111939 | + --------+
24 rows in
set
    (0.00 sec) mysql >
SELECT
    *
FROM
    employees
LIMIT
    10 ->;

+ --------+------------+------------+-----------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date | + --------+------------+------------+-----------+--------+------------+
| 10001 | 1953 -09 -02 | Georgi | Facello | M | 1986 -06 -26 | | 10002 | 1964 -06 -02 | Bezalel | Simmel | F | 1985 -11 -21 | | 10003 | 1959 -12 -03 | Parto | Bamford | M | 1986 -08 -28 | | 10004 | 1954 -05 -01 | Chirstian | Koblick | M | 1986 -12 -01 | | 10005 | 1955 -01 -21 | Kyoichi | Maliniak | M | 1989 -09 -12 | | 10006 | 1953 -04 -20 | Anneke | Preusig | F | 1989 -06 -02 | | 10007 | 1957 -05 -23 | Tzvetan | Zielinski | F | 1989 -02 -10 | | 10008 | 1958 -02 -19 | Saniya | Kalloufi | M | 1994 -09 -15 | | 10009 | 1952 -04 -19 | Sumant | Peac | F | 1985 -02 -18 | | 10010 | 1963 -06 -01 | Duangkaew | Piveteau | F | 1989 -08 -24 | + --------+------------+------------+-----------+--------+------------+
10 rows in
set
    (0.00 sec) mysql >
SELECT
    *
FROM
    employees
WHERE
    gender = 'F'
LIMIT
    10;

+ --------+------------+------------+------------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date | + --------+------------+------------+------------+--------+------------+
| 10002 | 1964 -06 -02 | Bezalel | Simmel | F | 1985 -11 -21 | | 10006 | 1953 -04 -20 | Anneke | Preusig | F | 1989 -06 -02 | | 10007 | 1957 -05 -23 | Tzvetan | Zielinski | F | 1989 -02 -10 | | 10009 | 1952 -04 -19 | Sumant | Peac | F | 1985 -02 -18 | | 10010 | 1963 -06 -01 | Duangkaew | Piveteau | F | 1989 -08 -24 | | 10011 | 1953 -11 -07 | Mary | Sluis | F | 1990 -01 -22 | | 10017 | 1958 -07 -06 | Cristinel | Bouloucos | F | 1993 -08 -03 | | 10018 | 1954 -06 -19 | Kazuhide | Peha | F | 1987 -04 -03 | | 10023 | 1953 -09 -29 | Bojan | Montemayor | F | 1989 -12 -17 | | 10024 | 1958 -09 -05 | Suzette | Pettey | F | 1997 -05 -19 | + --------+------------+------------+------------+--------+------------+
10 rows in
set
    (0.00 sec) mysql >
SELECT
    *
FROM
    employees
WHERE
    NOT gender = 'F'
LIMIT
    10;

+ --------+------------+------------+-------------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date | + --------+------------+------------+-------------+--------+------------+
| 10001 | 1953 -09 -02 | Georgi | Facello | M | 1986 -06 -26 | | 10003 | 1959 -12 -03 | Parto | Bamford | M | 1986 -08 -28 | | 10004 | 1954 -05 -01 | Chirstian | Koblick | M | 1986 -12 -01 | | 10005 | 1955 -01 -21 | Kyoichi | Maliniak | M | 1989 -09 -12 | | 10008 | 1958 -02 -19 | Saniya | Kalloufi | M | 1994 -09 -15 | | 10012 | 1960 -10 -04 | Patricio | Bridgland | M | 1992 -12 -18 | | 10013 | 1963 -06 -07 | Eberhardt | Terkki | M | 1985 -10 -20 | | 10014 | 1956 -02 -12 | Berni | Genin | M | 1987 -03 -11 | | 10015 | 1959 -08 -19 | Guoxiang | Nooteboom | M | 1987 -07 -02 | | 10016 | 1961 -05 -02 | Kazuhito | Cappelletti | M | 1995 -01 -27 | + --------+------------+------------+-------------+--------+------------+
10 rows in
set
    (0.00 sec) mysql >
SELECT
    *
FROM
    employees
WHERE
    gender <> 'F'
LIMIT
    10;

+ --------+------------+------------+-------------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date | + --------+------------+------------+-------------+--------+------------+
| 10001 | 1953 -09 -02 | Georgi | Facello | M | 1986 -06 -26 | | 10003 | 1959 -12 -03 | Parto | Bamford | M | 1986 -08 -28 | | 10004 | 1954 -05 -01 | Chirstian | Koblick | M | 1986 -12 -01 | | 10005 | 1955 -01 -21 | Kyoichi | Maliniak | M | 1989 -09 -12 | | 10008 | 1958 -02 -19 | Saniya | Kalloufi | M | 1994 -09 -15 | | 10012 | 1960 -10 -04 | Patricio | Bridgland | M | 1992 -12 -18 | | 10013 | 1963 -06 -07 | Eberhardt | Terkki | M | 1985 -10 -20 | | 10014 | 1956 -02 -12 | Berni | Genin | M | 1987 -03 -11 | | 10015 | 1959 -08 -19 | Guoxiang | Nooteboom | M | 1987 -07 -02 | | 10016 | 1961 -05 -02 | Kazuhito | Cappelletti | M | 1995 -01 -27 | + --------+------------+------------+-------------+--------+------------+
10 rows in
set
    (0.00 sec) mysql >
SELECT
    *
FROM
    employees
WHERE
    birth_date >= '1960-01-01'
LIMIT
    10;

+ --------+------------+------------+-------------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date | + --------+------------+------------+-------------+--------+------------+
| 10002 | 1964 -06 -02 | Bezalel | Simmel | F | 1985 -11 -21 | | 10010 | 1963 -06 -01 | Duangkaew | Piveteau | F | 1989 -08 -24 | | 10012 | 1960 -10 -04 | Patricio | Bridgland | M | 1992 -12 -18 | | 10013 | 1963 -06 -07 | Eberhardt | Terkki | M | 1985 -10 -20 | | 10016 | 1961 -05 -02 | Kazuhito | Cappelletti | M | 1995 -01 -27 | | 10021 | 1960 -02 -20 | Ramzi | Erde | M | 1988 -02 -10 | | 10027 | 1962 -07 -10 | Divier | Reistad | F | 1989 -07 -07 | | 10028 | 1963 -11 -26 | Domenick | Tempesti | M | 1991 -10 -22 | | 10032 | 1960 -08 -09 | Jeong | Reistad | F | 1990 -06 -20 | | 10034 | 1962 -12 -29 | Bader | Swan | M | 1988 -09 -21 | + --------+------------+------------+-------------+--------+------------+
10 rows in
set
    (0.00 sec) mysql >
SELECT
    *
FROM
    employees
WHERE
    first_name LIKE '%vi%'
LIMIT
    10;

+ --------+------------+------------+-----------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date | + --------+------------+------------+-----------+--------+------------+
| 10027 | 1962 -07 -10 | Divier | Reistad | F | 1989 -07 -07 | | 10030 | 1958 -07 -14 | Elvis | Demeyer | M | 1994 -02 -17 | | 10082 | 1963 -09 -09 | Parviz | Lortz | M | 1990 -01 -03 | | 10083 | 1959 -07 -23 | Vishv | Zockler | M | 1987 -03 -31 | | 10102 | 1959 -11 -04 | Paraskevi | Luby | F | 1994 -01 -26 | | 10200 | 1961 -12 -31 | Vidya | Awdeh | M | 1985 -10 -16 | | 10204 | 1956 -12 -09 | Nevio | Ritcey | F | 1986 -12 -04 | | 10211 | 1964 -08 -05 | Vishu | Strehl | F | 1989 -11 -18 | | 10212 | 1959 -05 -09 | Divier | Esteva | M | 1990 -07 -11 | | 10421 | 1959 -03 -22 | Divine | Marzano | M | 1989 -09 -12 | + --------+------------+------------+-----------+--------+------------+
10 rows in
set
    (0.01 sec) mysql >
SELECT
    *
FROM
    employees
WHERE
    birth_date BETWEEN '1960-01-01'
    AND '1960-01-31'
LIMIT
    10;

+ --------+------------+------------+-----------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date | + --------+------------+------------+-----------+--------+------------+
| 10141 | 1960 -01 -17 | Shahaf | Ishibashi | F | 1993 -05 -06 | | 10175 | 1960 -01 -11 | Aleksandar | Ananiadou | F | 1988 -01 -11 | | 10208 | 1960 -01 -02 | Xiping | Klerer | M | 1991 -12 -23 | | 10352 | 1960 -01 -28 | Erzsebet | Ohori | M | 1996 -01 -21 | | 10366 | 1960 -01 -25 | Morrie | Piazza | M | 1994 -04 -11 | | 10647 | 1960 -01 -12 | Tesuro | Bahk | M | 1995 -09 -28 | | 10893 | 1960 -01 -30 | Danil | Kropatsch | M | 1989 -08 -23 | | 11259 | 1960 -01 -13 | Amalendu | Gronowski | M | 1986 -12 -26 | | 11353 | 1960 -01 -30 | Utpal | Berztiss | M | 1986 -08 -25 | | 11374 | 1960 -01 -25 | Remzi | Matzat | F | 1993 -12 -12 | + --------+------------+------------+-----------+--------+------------+
10 rows in
set
    (0.00 sec) mysql >
SELECT
    *
FROM
    employees
WHERE
    first_name = 'Mary'
    AND gender = 'F'
LIMIT
    10;

+ --------+------------+------------+-----------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date | + --------+------------+------------+-----------+--------+------------+
| 10011 | 1953 -11 -07 | Mary | Sluis | F | 1990 -01 -22 | | 10532 | 1959 -08 -31 | Mary | Wossner | F | 1986 -05 -18 | | 11821 | 1954 -10 -18 | Mary | Piazza | F | 1995 -12 -13 | | 12334 | 1962 -03 -08 | Mary | Ertl | F | 1990 -03 -06 | | 13881 | 1956 -08 -14 | Mary | Monarch | F | 1991 -06 -10 | | 13924 | 1955 -05 -23 | Mary | DasSarma | F | 1991 -11 -05 | | 16021 | 1964 -06 -04 | Mary | Ananiadou | F | 1994 -05 -21 | | 23680 | 1962 -07 -14 | Mary | Navazio | F | 1986 -09 -17 | | 26899 | 1963 -12 -21 | Mary | Luders | F | 1987 -12 -03 | | 27747 | 1959 -03 -27 | Mary | Fujisawa | F | 1990 -09 -07 | + --------+------------+------------+-----------+--------+------------+
10 rows in
set
    (0.01 sec) mysql >
SELECT
    *
FROM
    employees
WHERE
    first_name = 'Mary'
    OR last_name = 'Peck' L IMIT 10;

+ --------+------------+------------+-----------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date | + --------+------------+------------+-----------+--------+------------+
| 10011 | 1953 -11 -07 | Mary | Sluis | F | 1990 -01 -22 | | 10532 | 1959 -08 -31 | Mary | Wossner | F | 1986 -05 -18 | | 10664 | 1962 -06 -02 | Xumin | Peck | M | 1989 -12 -24 | | 10856 | 1964 -03 -13 | Sreenivas | Peck | F | 1986 -12 -31 | | 11821 | 1954 -10 -18 | Mary | Piazza | F | 1995 -12 -13 | | 12333 | 1964 -05 -01 | Gino | Peck | M | 1990 -09 -20 | | 12334 | 1962 -03 -08 | Mary | Ertl | F | 1990 -03 -06 | | 13562 | 1960 -02 -15 | Mary | Cooley | M | 1986 -02 -24 | | 13881 | 1956 -08 -14 | Mary | Monarch | F | 1991 -06 -10 | | 13924 | 1955 -05 -23 | Mary | DasSarma | F | 1991 -11 -05 | + --------+------------+------------+-----------+--------+------------+
10 rows in
set
    (0.00 sec) mysql >
SELECT
    *
FROM
    employees
WHERE
    emp_no IN (10011, 10021, 10031);

+ --------+------------+------------+-----------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date | + --------+------------+------------+-----------+--------+------------+
| 10011 | 1953 -11 -07 | Mary | Sluis | F | 1990 -01 -22 | | 10021 | 1960 -02 -20 | Ramzi | Erde | M | 1988 -02 -10 | | 10031 | 1959 -01 -27 | Karsten | Joslin | M | 1991 -09 -01 | + --------+------------+------------+-----------+--------+------------+
3 rows in
set
    (0.00 sec) mysql >
SELECT
    first_name,
    last_name
FROM
    employees
WHERE
    emp_no = 20000;

+ ------------+-----------+
| first_name | last_name | + ------------+-----------+
| Jenwei | Matzke | + ------------+-----------+
1 row in
set
    (0.00 sec)
SELECT
    *
FROM
    employees
WHERE
    birth_date LIKE '1959-01-%';

like は文字列変換するので遅くなる可能性あり
SELECT
    *
FROM
    employees
WHERE
    birth_date BETWEEN '1959-01-01'
    AND '1959-01-31';

mysql >
SELECT
    *
FROM
    employees
ORDER BY
    birth_date
LIMIT
    10;

+ --------+------------+------------+--------------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date | + --------+------------+------------+--------------+--------+------------+
| 207658 | 1952 -02 -01 | Kiyokazu | Whitcomb | M | 1988 -07 -26 | | 87461 | 1952 -02 -01 | Moni | Decaestecker | M | 1986 -10 -06 | | 65308 | 1952 -02 -01 | Jouni | Pocchiola | M | 1985 -03 -10 | | 406121 | 1952 -02 -01 | Supot | Remmele | M | 1989 -01 -27 | | 91374 | 1952 -02 -01 | Eishiro | Kuzuoka | M | 1992 -02 -12 | | 237571 | 1952 -02 -01 | Ronghao | Schaad | M | 1988 -07 -10 | | 33131 | 1952 -02 -02 | Reinhold | Savasere | M | 1998 -01 -30 | | 51486 | 1952 -02 -02 | Jianwen | Sigstam | F | 1989 -07 -20 | | 61382 | 1952 -02 -02 | Kristof | Ranft | M | 1989 -04 -21 | | 59884 | 1952 -02 -02 | Fan | Przulj | M | 1991 -09 -25 | + --------+------------+------------+--------------+--------+------------+
10 rows in
set
    (0.34 sec) mysql >
SELECT
    *
FROM
    employees
ORDER BY
    birth_date DESC
LIMIT
    10;

+ --------+------------+------------+-----------------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date | + --------+------------+------------+-----------------+--------+------------+
| 60091 | 1965 -02 -01 | Surveyors | Bade | F | 1988 -05 -01 | | 66702 | 1965 -02 -01 | Deniz | Thibadeau | F | 1986 -03 -11 | | 33293 | 1965 -02 -01 | Adamantios | Vanwelkenhuysen | M | 1987 -12 -12 | | 59869 | 1965 -02 -01 | Zsolt | Riefers | M | 1987 -09 -25 | | 74344 | 1965 -02 -01 | Hiroyasu | Provine | M | 1994 -11 -25 | | 80850 | 1965 -02 -01 | Koldo | Luit | M | 1993 -11 -19 | | 86422 | 1965 -02 -01 | Jaewon | Thummel | F | 1985 -09 -14 | | 37592 | 1965 -02 -01 | Berni | Stranks | M | 1985 -11 -05 | | 93278 | 1965 -02 -01 | Magdalena | Penn | F | 1987 -04 -27 | | 11157 | 1965 -02 -01 | Mario | Cochrane | M | 1985 -03 -30 | + --------+------------+------------+-----------------+--------+------------+
10 rows in
set
    (0.11 sec) mysql >
SELECT
    *
FROM
    employees
ORDER BY
    birth_date,
    hire_date DESC
LIMIT
    30;

+ --------+------------+------------+--------------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date | + --------+------------+------------+--------------+--------+------------+
| 91374 | 1952 -02 -01 | Eishiro | Kuzuoka | M | 1992 -02 -12 | | 406121 | 1952 -02 -01 | Supot | Remmele | M | 1989 -01 -27 | | 207658 | 1952 -02 -01 | Kiyokazu | Whitcomb | M | 1988 -07 -26 | | 237571 | 1952 -02 -01 | Ronghao | Schaad | M | 1988 -07 -10 | | 87461 | 1952 -02 -01 | Moni | Decaestecker | M | 1986 -10 -06 | | 65308 | 1952 -02 -01 | Jouni | Pocchiola | M | 1985 -03 -10 | | 48910 | 1952 -02 -02 | Zhongwei | DuBourdieux | M | 1999 -12 -19 | | 33131 | 1952 -02 -02 | Reinhold | Savasere | M | 1998 -01 -30 | | 462774 | 1952 -02 -02 | Moie | Chinal | F | 1997 -09 -20 | | 436596 | 1952 -02 -02 | Gou | Pearson | F | 1997 -08 -14 | | 12282 | 1952 -02 -02 | Tadahiro | Delgrange | M | 1997 -01 -09 | | 217446 | 1952 -02 -02 | Mayuri | Barriga | F | 1996 -06 -26 | | 462007 | 1952 -02 -02 | Rasiah | Smeets | M | 1995 -03 -09 | | 405962 | 1952 -02 -02 | Moto | Staudhammer | M | 1995 -02 -20 | | 203054 | 1952 -02 -02 | Hausi | Krohn | M | 1994 -11 -23 | | 73959 | 1952 -02 -02 | True | Denny | M | 1994 -05 -25 | | 455745 | 1952 -02 -02 | Moni | Giveon | F | 1994 -01 -17 | | 256423 | 1952 -02 -02 | Bodh | Baik | M | 1993 -12 -27 | | 494291 | 1952 -02 -02 | Cedric | Tsukuda | F | 1993 -12 -12 | | 244265 | 1952 -02 -02 | Pantung | Halevi | M | 1993 -11 -12 | | 222160 | 1952 -02 -02 | Mana | Salinas | M | 1993 -05 -05 | | 79034 | 1952 -02 -02 | Janalee | Perri | F | 1992 -12 -10 | | 449186 | 1952 -02 -02 | Sachar | Loncour | M | 1992 -12 -04 | | 29456 | 1952 -02 -02 | Barun | Krohm | F | 1992 -11 -23 | | 467994 | 1952 -02 -02 | Shridhar | Horswill | M | 1992 -10 -17 | | 429276 | 1952 -02 -02 | Juyoung | Seghrouchni | M | 1992 -08 -17 | | 103295 | 1952 -02 -02 | Shigehito | Sommer | F | 1992 -03 -15 | | 234728 | 1952 -02 -02 | Kolar | Chepyzhov | M | 1992 -01 -24 | | 423460 | 1952 -02 -02 | Wuxu | Miara | M | 1991 -10 -10 | | 59884 | 1952 -02 -02 | Fan | Przulj | M | 1991 -09 -25 | + --------+------------+------------+--------------+--------+------------+
30 rows in
set
    (0.17 sec) mysql > use salaries ERROR 1049 (42000): Unknown database 'salaries' mysql > DESCRIBE salaries ->;

+ -----------+------+------+-----+---------+-------+
| Field | Type | Null | Key | Default | Extra | + -----------+------+------+-----+---------+-------+
| emp_no | int | NO | PRI | NULL | | | salary | int | NO | | NULL | | | from_date | date | NO | PRI | NULL | | | to_date | date | NO | | NULL | | + -----------+------+------+-----+---------+-------+
4 rows in
set
    (0.01 sec) mysql >
SELECT
    SUM(salary) AS total_salary
FROM
    salaries;

+ --------------+
| total_salary | + --------------+
| 181480757419 | + --------------+
1 row in
set
    (1.77 sec) mysql >
SELECT
    AVG(salary) AS average_salary
FROM
    salaries;

+ ----------------+
| average_salary | + ----------------+
| 63810.7448 | + ----------------+
1 row in
set
    (0.58 sec) mysql >
SELECT
    ROUND(AVG(salary)) AS rounded_average_salary
FROM
    salaries;

+ ------------------------+
| rounded_average_salary | + ------------------------+
| 63811 | + ------------------------+
1 row in
set
    (0.79 sec) mysql >
SELECT
    MAX(salary) AS total_salary
FROM
    salaries;

+ --------------+
| total_salary | + --------------+
| 158220 | + --------------+
1 row in
set
    (0.45 sec) mysql >
SELECT
    MIN(salary) AS total_salary
FROM
    salaries;

+ --------------+
| total_salary | + --------------+
| 38623 | + --------------+
1 row in
set
    (0.44 sec) mysql > mysql > mysql >
SELECT
    MAX(salary) AS total_salary
FROM
    salaries
WHERE
    from_date = '1986-06-26';

+ --------------+
| total_salary | + --------------+
| 103344 | + --------------+
1 row in
set
    (0.75 sec) mysql >
SELECT
    COUNT(*) AS ROW_COUNT
FROM
    salaries;

+ -----------+
| ROW_COUNT | + -----------+
| 2844047 | + -----------+
1 row in
set
    (0.11 sec) mysql >
SELECT
    ROUND(AVG(salary), 1) AS rounded_average_salary
FROM
    salaries
WHERE
    to_date = '1991-06-26';

+ ------------------------+
| rounded_average_salary | + ------------------------+
| 57371.6 | + ------------------------+
1 row in
set
    (0.45 sec) mysql >
SELECT
    emp_no,
    COUNT(*) AS total_row
FROM
    salaries
GROUP BY
    emp_no
LIMIT
    10;

+ --------+-----------+
| emp_no | total_row | + --------+-----------+
| 10001 | 17 | | 10002 | 6 | | 10003 | 7 | | 10004 | 16 | | 10005 | 13 | | 10006 | 12 | | 10007 | 14 | | 10008 | 3 | | 10009 | 18 | | 10010 | 6 | + --------+-----------+
10 rows in
set
    (0.00 sec) mysql >
SELECT
    emp_no,
    MIN(salary) AS min_salary,
    MAX(salary) AS max_salary ->
FROM
    salaries ->
WHERE
    emp_no BETWEEN 10001
    AND 10010 ->
GROUP BY
    emp_no;

+ --------+------------+------------+
| emp_no | min_salary | max_salary | + --------+------------+------------+
| 10001 | 60117 | 88958 | | 10002 | 65828 | 72527 | | 10003 | 40006 | 43699 | | 10004 | 40054 | 74057 | | 10005 | 78228 | 94692 | | 10006 | 40000 | 60098 | | 10007 | 56724 | 88070 | | 10008 | 46671 | 52668 | | 10009 | 60929 | 94443 | | 10010 | 72488 | 80324 | + --------+------------+------------+
10 rows in
set
    (0.01 sec) mysql >
SELECT
    MIN(from_date) AS start_date,
    MAX(to_date) AS end_date
FROM
    salaries
WHERE
    emp_no BETWEEN 10001
    AND 10010
GROUP BY
    emp_no
HAVING
    end_date < '9999-01-01' ->;

+ ------------+------------+
| start_date | end_date | + ------------+------------+
| 1998 -03 -11 | 2000 -07 -31 | + ------------+------------+
1 row in
set
    (0.00 sec) mysql >
SELECT
    MIN(from_date) AS start_date,
    MAX(to_date) AS end_date
FROM
    salaries
WHERE
    emp_no BETWEEN 10001
    AND 10010
GROUP BY
    emp_no;

+ ------------+------------+
| start_date | end_date | + ------------+------------+
| 1986 -06 -26 | 9999 -01 -01 | | 1996 -08 -03 | 9999 -01 -01 | | 1995 -12 -03 | 9999 -01 -01 | | 1986 -12 -01 | 9999 -01 -01 | | 1989 -09 -12 | 9999 -01 -01 | | 1990 -08 -05 | 9999 -01 -01 | | 1989 -02 -10 | 9999 -01 -01 | | 1998 -03 -11 | 2000 -07 -31 | | 1985 -02 -18 | 9999 -01 -01 | | 1996 -11 -24 | 9999 -01 -01 | + ------------+------------+
10 rows in
set
    (0.00 sec) mysql >
SELECT
    -> emp_no,
    -> MIN(from_date) AS start_date,
    -> MAX(
        CASE
            WHEN to_date = '9999-01-01' THEN NULL
            ELSE to_date
        END
    ) AS end_date ->
FROM
    -> salaries ->
WHERE
    -> emp_no BETWEEN 10001
    AND 10010 ->
GROUP BY
    -> emp_no;

+ --------+------------+------------+
| emp_no | start_date | end_date | + --------+------------+------------+
| 10001 | 1986 -06 -26 | 2002 -06 -22 | | 10002 | 1996 -08 -03 | 2001 -08 -02 | | 10003 | 1995 -12 -03 | 2001 -12 -01 | | 10004 | 1986 -12 -01 | 2001 -11 -27 | | 10005 | 1989 -09 -12 | 2001 -09 -09 | | 10006 | 1990 -08 -05 | 2001 -08 -02 | | 10007 | 1989 -02 -10 | 2002 -02 -07 | | 10008 | 1998 -03 -11 | 2000 -07 -31 | | 10009 | 1985 -02 -18 | 2002 -02 -14 | | 10010 | 1996 -11 -24 | 2001 -11 -23 | + --------+------------+------------+
10 rows in
set
    (0.01 sec) mysql >
SELECT
    emp_no,
    MAX(salary) AS max_salary
FROM
    salaries
GROUP BY
    emp_no
HAVING
    salary > 140000;

ERROR 1054 (42S22): Unknown column 'salary' in 'having clause' mysql >
SELECT
    emp_no,
    MAX(salary) AS max_salary
FROM
    salaries
GROUP BY
    emp_no
HAVING
    max_salary > 140000;

+ --------+------------+
| emp_no | max_salary | + --------+------------+
| 11486 | 145732 | | 12149 | 141114 | | 13386 | 144434 | | 14487 | 144534 | | 18006 | 144866 | | 18997 | 145215 | | 24099 | 141197 | | 36219 | 148820 | | 37558 | 149440 | | 39964 | 142638 | | 41822 | 146100 | | 43624 | 158220 | | 44188 | 140500 | | 44465 | 146719 | | 46439 | 150345 | | 47286 | 140138 | | 47978 | 155709 | | 49232 | 141399 | | 51531 | 142181 | | 53402 | 146507 | | 56012 | 141824 | | 58746 | 142413 | | 66793 | 150052 | | 72680 | 140468 | | 76125 | 141423 | | 78008 | 144485 | | 80823 | 154459 | | 80937 | 142485 | | 84052 | 142846 | | 89825 | 143644 | | 91935 | 147469 | | 96957 | 143950 | | 98169 | 144088 | | 102078 | 140974 | | 102962 | 146655 | | 107140 | 142506 | | 109334 | 155377 | | 205000 | 153715 | | 210661 | 145902 | | 212558 | 140055 | | 214842 | 143183 | | 218237 | 141631 | | 220051 | 142647 | | 225306 | 144142 | | 232753 | 147480 | | 236748 | 141680 | | 237069 | 140742 | | 237542 | 152687 | | 237674 | 145901 | | 237694 | 141431 | | 238117 | 152220 | | 239311 | 143727 | | 246120 | 146292 | | 248492 | 143727 | | 253939 | 155513 | | 254247 | 142082 | | 254466 | 156286 | | 257360 | 144748 | | 258761 | 146755 | | 263955 | 146882 | | 265296 | 142694 | | 266526 | 152710 | | 266639 | 142426 | | 267069 | 141003 | | 272431 | 145441 | | 276633 | 152412 | | 279776 | 150740 | | 282030 | 142184 | | 282370 | 141488 | | 400122 | 144563 | | 406747 | 142869 | | 408988 | 144205 | | 413137 | 142395 | | 415751 | 146280 | | 416972 | 140192 | | 418416 | 141407 | | 419748 | 140784 | | 421835 | 141953 | | 422084 | 144560 | | 425675 | 142319 | | 432583 | 143937 | | 435435 | 144303 | | 438507 | 140332 | | 447240 | 140332 | | 447849 | 145960 | | 451883 | 140357 | | 466852 | 145128 | | 467956 | 142914 | | 476883 | 141160 | | 477358 | 140077 | | 484736 | 141578 | | 485205 | 141555 | | 492164 | 148696 | | 492633 | 143148 | | 493158 | 154376 | | 494128 | 141990 | | 494152 | 140801 | + --------+------------+
97 rows in
set
    (0.91 sec) mysql >
SELECT
    emp_no,
    MIN(salary) AS min_salary
FROM
    salaries
WHERE
    emp_no BETWEEN 10001
    AND 10100
GROUP BY
    emp_no
HAVING
    min_salary < 40000;

+ --------+------------+
| emp_no | min_salary | + --------+------------+
| 10022 | 39935 | | 10027 | 39520 | | 10037 | 39765 | | 10048 | 39507 | | 10049 | 39735 | | 10064 | 39551 | | 10072 | 39567 | + --------+------------+
7 rows in
set
    (0.00 sec)
SELECT
    emp_no,
    MAX(
        CASE
            WHEN to_date = '9999-01-01' THEN NULL
            ELSE to_date
        END
    ) AS end_da
FROM
    salaries
WHERE
    emp_no BETWEEN 10001
    AND 10100
GROUP BY
    emp_no;

mysql >
SELECT
    emp_no,
    MAX(
        CASE
            WHEN to_date = '9999-01-01' THEN NULL
            ELSE to_date
        END
    ) AS end_da
FROM
    salaries ->
WHERE
    emp_no BETWEEN 10001
    AND 10100 ->
GROUP BY
    emp_no;

+ --------+------------+
| emp_no | end_da | + --------+------------+
| 10001 | 2002 -06 -22 | | 10002 | 2001 -08 -02 | | 10003 | 2001 -12 -01 | | 10004 | 2001 -11 -27 | | 10005 | 2001 -09 -09 | | 10006 | 2001 -08 -02 | | 10007 | 2002 -02 -07 | | 10008 | 2000 -07 -31 | | 10009 | 2002 -02 -14 | | 10010 | 2001 -11 -23 | | 10011 | 1996 -11 -09 | | 10012 | 2001 -12 -16 | | 10013 | 2001 -10 -16 | | 10014 | 2001 -12 -27 | | 10015 | 1993 -08 -22 | | 10016 | 2002 -02 -10 | | 10017 | 2002 -08 -01 | | 10018 | 2002 -03 -30 | | 10019 | 2002 -04 -29 | | 10020 | 2001 -12 -29 | | 10021 | 2002 -07 -15 | | 10022 | 2001 -09 -02 | | 10023 | 2001 -09 -26 | | 10024 | 2002 -06 -13 | | 10025 | 1997 -10 -15 | | 10026 | 2002 -03 -18 | | 10027 | 2002 -03 -31 | | 10028 | 1998 -04 -06 | | 10029 | 2001 -09 -15 | | 10030 | 2002 -02 -15 | | 10031 | 2001 -08 -29 | | 10032 | 2002 -06 -17 | | 10033 | 1993 -03 -24 | | 10034 | 1999 -10 -31 | | 10035 | 2001 -09 -02 | | 10036 | 2002 -04 -26 | | 10037 | 2001 -12 -02 | | 10038 | 2001 -09 -17 | | 10039 | 2002 -01 -15 | | 10040 | 2002 -02 -12 | | 10041 | 2001 -11 -09 | | 10042 | 2000 -08 -10 | | 10043 | 2001 -10 -17 | | 10044 | 2002 -05 -19 | | 10045 | 2001 -11 -15 | | 10046 | 2002 -06 -18 | | 10047 | 2002 -03 -28 | | 10048 | 1987 -01 -27 | | 10049 | 2002 -05 -02 | | 10050 | 2001 -12 -22 | | 10051 | 2001 -10 -13 | | 10052 | 2002 -01 -30 | | 10053 | 2001 -11 -11 | | 10054 | 2002 -07 -27 | | 10055 | 1995 -07 -22 | | 10056 | 2002 -01 -29 | | 10057 | 2002 -01 -12 | | 10058 | 2002 -04 -22 | | 10059 | 2002 -06 -23 | | 10060 | 2002 -05 -25 | | 10061 | 2001 -11 -29 | | 10062 | 2001 -08 -27 | | 10063 | 2002 -04 -04 | | 10064 | 1992 -03 -02 | | 10065 | 2002 -05 -23 | | 10066 | 2002 -02 -22 | | 10067 | 2002 -02 -28 | | 10068 | 2001 -08 -03 | | 10069 | 2002 -06 -12 | | 10070 | 2001 -10 -10 | | 10071 | 2001 -08 -03 | | 10072 | 2002 -05 -18 | | 10073 | 1998 -02 -22 | | 10074 | 2001 -08 -10 | | 10075 | 2001 -01 -15 | | 10076 | 2002 -07 -14 | | 10077 | 2001 -12 -21 | | 10078 | 2001 -09 -27 | | 10079 | 2001 -12 -11 | | 10080 | 2001 -09 -26 | | 10081 | 2001 -10 -26 | | 10082 | 1990 -01 -15 | | 10083 | 2002 -03 -27 | | 10084 | 2001 -12 -13 | | 10085 | 2002 -04 -06 | | 10086 | 2002 -02 -16 | | 10087 | 2001 -01 -09 | | 10088 | 2001 -08 -30 | | 10089 | 2002 -01 -07 | | 10090 | 1999 -05 -07 | | 10091 | 2001 -11 -16 | | 10092 | 2002 -04 -21 | | 10093 | 2002 -06 -07 | | 10094 | 1997 -11 -08 | | 10095 | 2002 -03 -08 | | 10096 | 2002 -01 -22 | | 10097 | 2001 -09 -12 | | 10098 | 1992 -12 -11 | | 10099 | 2001 -10 -15 | | 10100 | 2001 -09 -17 | + --------+------------+
100 rows in
set
    (0.02 sec) mysql >
SELECT
    -> emp_no,
    -> MAX(to_date) AS last_end_date ->
FROM
    -> salaries ->
WHERE
    -> emp_no BETWEEN 10001
    AND 10100 ->
GROUP BY
    -> emp_no ->
HAVING
    -> last_end_date < '9999-01-01';

+ --------+---------------+
| emp_no | last_end_date | + --------+---------------+
| 10008 | 2000 -07 -31 | | 10011 | 1996 -11 -09 | | 10015 | 1993 -08 -22 | | 10021 | 2002 -07 -15 | | 10025 | 1997 -10 -15 | | 10028 | 1998 -04 -06 | | 10033 | 1993 -03 -24 | | 10034 | 1999 -10 -31 | | 10042 | 2000 -08 -10 | | 10048 | 1987 -01 -27 | | 10055 | 1995 -07 -22 | | 10064 | 1992 -03 -02 | | 10073 | 1998 -02 -22 | | 10075 | 2001 -01 -15 | | 10082 | 1990 -01 -15 | | 10087 | 2001 -01 -09 | | 10090 | 1999 -05 -07 | | 10094 | 1997 -11 -08 | | 10098 | 1992 -12 -11 | + --------+---------------+
19 rows in
set
    (0.00 sec)
SELECT
    d.dept_no AS 部署番号,
    dm.emp_no AS マネージャーの従業員番号,
    e.first_name AS マネージャーのファーストネーム,
    e.last_name AS マネージャーのラストネーム
FROM
    dept_manager dm
    JOIN departments d ON dm.dept_no = d.dept_no
    JOIN employees e ON dm.emp_no = e.emp_no
ORDER BY
    d.dept_no,
    dm.to_date DESC;

SELECT
    dm.dept_no,
    dm.emp_no,
    e.first_name,
    e.last_name
FROM
    dept_manager AS dm
JOIN
    employees AS e
ON
    dm.emp_no = e.emp_no;


SELECT
    dm.dept_no,
    d.dept_name,
    dm.emp_no,
    e.first_name,
    e.last_name
FROM
    dept_manager AS dm
JOIN
    employees AS e
ON
    dm.emp_no = e.emp_no
JOIN
    departments AS d
ON
    dm.dept_no = d.dept_no
WHERE
    dm.to_date < '9999-01-01';

mysql> SELECT
    ->     dm.dept_no,
    ->     d.dept_name,
    ->     dm.emp_no,
    ->     e.first_name,
    ->     e.last_name
    -> FROM
    ->     dept_manager AS dm
    -> JOIN
    ->     employees AS e
    -> ON
    ->     dm.emp_no = e.emp_no
    -> JOIN
    ->     departments AS d
    -> ON
    ->     dm.dept_no = d.dept_no
    -> WHERE
    ->     dm.to_date < '9999-01-01';
+---------+--------------------+--------+-------------+--------------+
| dept_no | dept_name          | emp_no | first_name  | last_name    |
+---------+--------------------+--------+-------------+--------------+
| d009    | Customer Service   | 111692 | Tonny       | Butterworth  |
| d009    | Customer Service   | 111784 | Marjo       | Giarratana   |
| d009    | Customer Service   | 111877 | Xiaobin     | Spinelli     |
| d005    | Development        | 110511 | DeForest    | Hagimont     |
| d002    | Finance            | 110085 | Ebru        | Alpin        |
| d003    | Human Resources    | 110183 | Shirish     | Ossenbruggen |
| d001    | Marketing          | 110022 | Margareta   | Markovitch   |
| d004    | Production         | 110303 | Krassimir   | Wegerle      |
| d004    | Production         | 110344 | Rosine      | Cools        |
| d004    | Production         | 110386 | Shem        | Kieras       |
| d006    | Quality Management | 110725 | Peternela   | Onuegbe      |
| d006    | Quality Management | 110765 | Rutger      | Hofmeyr      |
| d006    | Quality Management | 110800 | Sanjoy      | Quadeer      |
| d008    | Research           | 111400 | Arie        | Staelin      |
| d007    | Sales              | 111035 | Przemyslawa | Kaelbling    |
+---------+--------------------+--------+-------------+--------------+
15 rows in set (0.01 sec)


SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    s.from_date,
    s.to_date,
    s.salary
FROM
    employees AS e
JOIN
    salaries AS s
ON
    e.emp_no = s.emp_no
WHERE
    e.emp_no BETWEEN 10001 AND 10010;


INNER JOIN と OUTER JOIN の違い:

INNER JOIN（内部結合）:

INNER JOINは、結合条件に合致する行のみが結果に含まれます。
つまり、どちらかのテーブルに対応するデータがない場合、その行は結果に含まれません。
共通するデータのみを取得するのに使用します。
sql
Copy code
SELECT column1, column2
FROM table1
INNER JOIN table2 ON table1.column = table2.column;
OUTER JOIN（外部結合）:

OUTER JOINは、結合条件に合致する行だけでなく、どちらかのテーブルにしか存在しない行も含まれます。
結合しているテーブルのどちらかにデータが存在しない場合、その欠落している側の列には NULL が入ります。
LEFT JOIN（または LEFT OUTER JOIN）は、左側のテーブルのすべての行を保持します。
RIGHT JOIN（または RIGHT OUTER JOIN）は、右側のテーブルのすべての行を保持します。
FULL JOIN（または FULL OUTER JOIN）は、両方のテーブルのすべての行を保持します。
sql
Copy code
SELECT column1, column2
FROM table1
LEFT JOIN table2 ON table1.column = table2.column;
使い分け:

INNER JOINは、共通するデータだけが必要な場合に使用します。つまり、どちらかのテーブルに存在しないデータを無視する場合に使います。

OUTER JOINは、どちらかのテーブルにしか存在しないデータも含めて結果が必要な場合に使用します。特に、左側のテーブル（または右側のテーブル）のすべての行を保持したい場合に LEFT JOIN や RIGHT JOIN を使用します。

使い分けは、取得したいデータの特性によります。両方のテーブルのデータが完全に対応している場合は INNER JOIN、どちらかのテーブルのデータが不完全であっても全体のデータを取得したい場合は OUTER JOIN を選択します。


SELECT
    emp_no,
    salary
FROM
    salaries
GROUP BY emp_no, salary
HAVING emp_no BETWEEN 10001 AND 10010
AND salary > (SELECT AVG(salary) FROM salaries);


SELECT DISTINCT
    emp_no
FROM
    salaries
WHEre salary > (SELECT AVG(salary) * 2 FROM salaries);

SELECT
    emp_no,
    MAX(salary) AS max_salary
FROM
    salaries
GROUP BY emp_no, salary
HAVING emp_no BETWEEN 10001 AND 10010
AND salary > (SELECT AVG(salary) FROM salaries);

+-----------------+
| AVG(salary) * 2 |
+-----------------+
|     127621.4897 |
+-----------------+


SELECT
    gender,
    emp_no,
    birth_date
FROM
    employees AS e1
WHERE birth_date = (
    SELECT MAX(birth_date)
    FROM employees AS e2
    WHERE e1.gender = e2.gender
    GROUP BY gender
    );

SELECT
    gender,
    emp_no,
    birth_date,
    first_name,
    last_name
FROM
    employees AS e1
WHERE
    BETWEEN 10001 AND 10010
AND
    birth_date = (
    SELECT MIN(birth_date)
    FROM employees AS e2
    WHERE e1.gender = e2.gender
    );



mysql> SELECT
    ->   gender,
    ->   emp_no,
    ->   first_name,
    ->   last_name,
    ->   birth_date
    -> FROM
    ->   employees e1
    -> WHERE
    ->   (gender, birth_date) IN (
    ->     SELECT
    ->       gender,
    ->       MIN(birth_date) AS earliest_birth_date
    ->     FROM
    ->       employees e2
    ->     WHERE
    ->       emp_no BETWEEN 10100 AND 10200
    ->     AND
    ->       e1.gender = e2.gender
    ->     GROUP BY
    ->       gender
    ->   );
+--------+--------+-------------+----------------+------------+
| gender | emp_no | first_name  | last_name      | birth_date |
+--------+--------+-------------+----------------+------------+
| F      |  10127 | Subir       | Baja           | 1952-02-24 |
| M      |  10131 | Magdalena   | Eldridge       | 1952-02-19 |
| M      |  15763 | Barun       | Narahari       | 1952-02-19 |
| F      |  15861 | Gio         | Anido          | 1952-02-24 |
| M      |  21498 | Aemilian    | Quadeer        | 1952-02-19 |
| M      |  22601 | Shigenori   | Staelin        | 1952-02-19 |
| M      |  37442 | Subhada     | Lipner         | 1952-02-19 |
| F      |  39244 | Sasan       | Marrevee       | 1952-02-24 |
| M      |  40399 | Hirochika   | Sidhu          | 1952-02-19 |
| M      |  44821 | Martien     | Covnot         | 1952-02-19 |
| F      |  49617 | Mahmut      | Domenig        | 1952-02-24 |
| M      |  50320 | Guenter     | Pietrzykowski  | 1952-02-19 |
| M      |  53016 | Huan        | Rohrbach       | 1952-02-19 |
| F      |  66290 | Pasqua      | Swick          | 1952-02-24 |
| M      |  71072 | Percy       | Georgakopoulos | 1952-02-19 |
| M      |  76767 | Weiru       | Chachaty       | 1952-02-19 |
| M      |  84010 | Manibrata   | Argence        | 1952-02-19 |
| F      |  87619 | Cheong      | Baaleh         | 1952-02-24 |
| M      |  95294 | Dulce       | Bain           | 1952-02-19 |
| M      |  99525 | Zissis      | Ghelli         | 1952-02-19 |
| F      | 202084 | Aamer       | Birch          | 1952-02-24 |
| F      | 205034 | Sanjay      | Chappelet      | 1952-02-24 |
| F      | 206245 | Sreenivas   | Velardi        | 1952-02-24 |
| F      | 224612 | Marsha      | Munck          | 1952-02-24 |
| M      | 232559 | Ramya       | Vernadat       | 1952-02-19 |
| F      | 234100 | Bezalel     | Melichar       | 1952-02-24 |
| F      | 235691 | Ibibia      | Buescher       | 1952-02-24 |
| M      | 239892 | Saeed       | Waschkowski    | 1952-02-19 |
| M      | 242528 | Lansing     | Cannata        | 1952-02-19 |
| M      | 243950 | Lidong      | Argence        | 1952-02-19 |
| F      | 244155 | Huai        | Emmerich       | 1952-02-24 |
| M      | 246817 | Taegyun     | Czaja          | 1952-02-19 |
| M      | 248640 | Jessie      | Eiter          | 1952-02-19 |
| M      | 252694 | Randy       | Pepe           | 1952-02-19 |
| M      | 257291 | Marit       | Plumb          | 1952-02-19 |
| M      | 258185 | Make        | Biran          | 1952-02-19 |
| M      | 262340 | Zengping    | Deverell       | 1952-02-19 |
| F      | 271039 | Cedric      | Colorni        | 1952-02-24 |
| F      | 278922 | Susuma      | Riexinger      | 1952-02-24 |
| M      | 288045 | Rafael      | Godskesen      | 1952-02-19 |
| M      | 293259 | Breannda    | Petersohn      | 1952-02-19 |
| M      | 294170 | Valeri      | Improta        | 1952-02-19 |
| M      | 295169 | Bingning    | Ginesta        | 1952-02-19 |
| F      | 400219 | Udaiprakash | Huxford        | 1952-02-24 |
| M      | 400514 | Baruch      | Curless        | 1952-02-19 |
| M      | 402425 | Jeanna      | Kemmerer       | 1952-02-19 |
| M      | 402585 | Adamantios  | Swick          | 1952-02-19 |
| M      | 406936 | Gianluca    | Rebaine        | 1952-02-19 |
| M      | 410273 | Jianhao     | Soloway        | 1952-02-19 |
| F      | 419331 | Wojceich    | Gyorkos        | 1952-02-24 |
| M      | 421948 | Marl        | Chorvat        | 1952-02-19 |
| M      | 423830 | Maya        | Menhoudj       | 1952-02-19 |
| M      | 430519 | Vojin       | Lanteri        | 1952-02-19 |
| F      | 443195 | Manton      | Bratten        | 1952-02-24 |
| M      | 449693 | Teruyuki    | Angiulli       | 1952-02-19 |
| M      | 454218 | Mokhtar     | Ducloy         | 1952-02-19 |
| F      | 456180 | Kazuhira    | Lieberherr     | 1952-02-24 |
| M      | 461915 | Alejandro   | Sambasivam     | 1952-02-19 |
| F      | 461962 | Shugo       | Raoux          | 1952-02-24 |
| M      | 463894 | Arfst       | Montemayor     | 1952-02-19 |
| M      | 473340 | Yifei       | Danner         | 1952-02-19 |
| F      | 475873 | Garnet      | Luce           | 1952-02-24 |
| F      | 477133 | Chikara     | Gubsky         | 1952-02-24 |
| M      | 484072 | Stabislas   | Lienhardt      | 1952-02-19 |
| M      | 484655 | Heejo       | Templeman      | 1952-02-19 |
| M      | 485899 | Stabislas   | Merle          | 1952-02-19 |
| M      | 492084 | Reinhard    | Yetim          | 1952-02-19 |
| M      | 493792 | Leni        | McFarlin       | 1952-02-19 |
+--------+--------+-------------+----------------+------------+
68 rows in set (19.08 sec)



SELECT
    emp_no,
    to_date,
    (
    CASE
        WHEN to_date = '9999-01-01' THEN 'unemployed'
        ELSE 'employed'
    END
    ) AS status
FROM
    salaries
WHERE
    emp_no BETWEEN 100100 AND 100200;


SELECT
    generation,
    MAX(max_salary) AS max_salary
FROM
    (
    SELECT
        employees.emp_no,
        birth_date,
        (
        CASE
            WHEN birth_date BETWEEN '1950-01-01' AND '1959-12-31'
                THEN '50s'
            WHEN birth_date BETWEEN '1960-01-01' AND '1969-12-31'
                THEN '60s'
        END
        ) AS generation,
        MAX(salary) AS max_salary
    FROM
        employees
    JOIN
        salaries ON employees.emp_no = salaries.emp_no
    WHERE
        employees.emp_no BETWEEN 100100 AND 100200
    GROUP BY
        generation, employees.emp_no
    ) AS subquery
GROUP BY
    generation;

SQLの実行計画は、データベースエンジンがSQLクエリを実行する際にどのような手順でデータを取得または処理するかを示す計画のことです。実行計画はデータベースの最適化エンジンによって生成され、SQLクエリの効率的な実行を目指しています。

実行計画を確認することで、以下のような情報が得られます。

クエリの最適化: 実行計画を見ることで、データベースエンジンがどのようにクエリを解釈し、最適な実行計画を選択したかを理解できます。これにより、クエリのパフォーマンスが向上する可能性があります。

インデックスの利用: 実行計画は、どのインデックスが使用されているかを示します。正しいインデックスが使われているかどうかを確認することで、データの検索や結合が効率的に行われているかを理解できます。

テーブルのアクセス方法: 実行計画には、どのテーブルがどのアクセス方法（フルスキャン、インデックススキャンなど）を使用しているかが示されます。これにより、データの読み取り方法に関する情報を得ることができます。

処理の流れ: 実行計画は、データベースエンジンがクエリを実行する手順を示します。どのテーブルから始まり、どのテーブルとどのように結合されていくかを理解することができます。

良い実行計画を持つクエリは、データベースのパフォーマンスを向上させる要因となります。不適切な実行計画は、クエリの実行が遅くなったり、システムに負荷をかける原因となります。そのため、実行計画を確認して最適化を行うことは、データベースの効率的な運用に重要です。



mysql> EXPLAIN SELECT * FROM salaries WHERE salary = 70575;
+----+-------------+----------+------------+------+---------------+------+---------+------+---------+----------+-------------+
| id | select_type | table    | partitions | type | possible_keys | key  | key_len | ref  | rows    | filtered | Extra       |
+----+-------------+----------+------------+------+---------------+------+---------+------+---------+----------+-------------+
|  1 | SIMPLE      | salaries | NULL       | ALL  | NULL          | NULL | NULL    | NULL | 2838426 |    10.00 | Using where |
+----+-------------+----------+------------+------+---------------+------+---------+------+---------+----------+-------------+
1 row in set, 1 warning (0.02 sec)

mysql> \
mysql> EXPLAIN ANALYZE SELECT * FROM salaries WHERE salary = 70575;
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| EXPLAIN                                                                                                                                                                                                           |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| -> Filter: (salaries.salary = 70575)  (cost=286636 rows=283843) (actual time=2.2..1184 rows=56 loops=1)
    -> Table scan on salaries  (cost=286636 rows=2.84e+6) (actual time=0.612..1061 rows=2.84e+6 loops=1)
 |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (1.22 sec)

mysql>
mysql> EXPLAIN SELECT * FROM salaries WHERE emp_no = 10100;
+----+-------------+----------+------------+------+---------------+---------+---------+-------+------+----------+-------+
| id | select_type | table    | partitions | type | possible_keys | key     | key_len | ref   | rows | filtered | Extra |
+----+-------------+----------+------------+------+---------------+---------+---------+-------+------+----------+-------+
|  1 | SIMPLE      | salaries | NULL       | ref  | PRIMARY       | PRIMARY | 4       | const |   15 |   100.00 | NULL  |
+----+-------------+----------+------------+------+---------------+---------+---------+-------+------+----------+-------+
1 row in set, 1 warning (0.01 sec)

mysql> EXPLAIN ANALYZE SELECT * FROM salaries WHERE emp_no = 10100;
+---------------------------------------------------------------------------------------------------------------------------+
| EXPLAIN                                                                                                                   |
+---------------------------------------------------------------------------------------------------------------------------+
| -> Index lookup on salaries using PRIMARY (emp_no=10100)  (cost=1.9 rows=15) (actual time=0.0968..0.145 rows=15 loops=1)
 |
+---------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)
このEXPLAIN結果は、salariesテーブルからemp_noが10100の行を取得するクエリに関する情報を示しています。

id: クエリ内でのテーブルの処理順序を示す番号。このクエリでは1つのテーブルのみが扱われているので1です。
select_type: クエリの種類。SIMPLEは単純なSELECTクエリを示します。
table: 対象のテーブル。このクエリではsalariesテーブルが対象です。
partitions: パーティションの使用があれば表示されますが、このクエリではありません。
type: 行の選択方法を示す。このクエリではref（参照）が使われています。
possible_keys: クエリにおいて使用できるインデックスの一覧。このクエリではPRIMARYキーが使用可能です。
key: 実際に使用されたインデックス。このクエリではPRIMARYキーが使用されています。
key_len: 使用されたインデックスの長さ。このクエリでは4バイトです。
ref: インデックス参照に使用される値。このクエリではconst（定数）が使用されています。
rows: インデックススキャンが予想される行の数。このクエリでは15行です。
filtered: フィルタリングされた行の割合。このクエリでは全行が対象であるため100.00です。
Extra: その他の情報。このクエリでは特にありません。
この結果から、salariesテーブルからemp_noが10100の行をPRIMARYキーを使用して取得する際、参照のためのrefが使われており、15行の結果が得られることが分かります。インデックスが適切に使用されており、クエリの実行には効率的な方法が採用されていることがわかります。





741 chars / 26 words

You
type: がref（参照）とはどういうことでしょうか？
ChatGPT
type: ref は、MySQLのEXPLAIN結果において、クエリの実行時にどのようにして行を選択するかを示す部分です。

type: ref (参照)

参照（ref）は、クエリがインデックスを使用して特定の値を参照する場合に表示されるものです。一般的に、インデックスの利用が期待できる場合にrefが使われます。この場合、クエリが特定の値と一致する行を効率的に見つけるためにインデックスが活用されています。

例えば、クエリが WHERE emp_no = 10100 のような条件を含んでおり、この条件に対するインデックスがある場合、そのインデックスがrefとして表示されます。refの後の const は、この参照が定数によるものであることを示しています。

要するに、type: refはクエリが特定の値を参照する際に、それを効率的に行うためにインデックスが使用されていることを示しています。

394 chars / 17 words

You
この結果の解説をお願いします。
mysql> EXPLAIN ANALYZE SELECT * FROM salaries WHERE emp_no = 10100;
+---------------------------------------------------------------------------------------------------------------------------+
| EXPLAIN                                                                                                                   |
+---------------------------------------------------------------------------------------------------------------------------+
| -> Index lookup on salaries using PRIMARY (emp_no=10100)  (cost=1.9 rows=15) (actual time=0.0968..0.145 rows=15 loops=1)
 |
+---------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.00 sec)
ChatGPT
このEXPLAIN ANALYZEの結果は、クエリの実行プランを詳細に示しています。

Index lookup on salaries using PRIMARY (emp_no=10100)

この部分は、salaries テーブルの PRIMARY インデックスを使用して、emp_no が 10100 である行を探し出すことを示しています。これは効率的な検索が行われており、クエリの実行にはコストがかからないことを示しています。実際の実行時間も 0.0968 から 0.145 の範囲であり、非常に迅速に結果が得られています。

cost=1.9 rows=15

コスト（cost）は、クエリの実行にかかる見積もりコストを示しています。rows は、実行される行の数を示しています。このクエリでは、15行が見積もられています。

actual time=0.0968..0.145 rows=15 loops=1

実際の実行時間（actual time）は、クエリがどれくらいの時間で実行されたかを示しています。0.0968 から 0.145 の範囲で実行され、rows=15 なので、15行のデータを取得するのにかかった時間です。

要するに、このクエリは PRIMARY インデックスを使用して emp_no が 10100 である行を非常に効率的に取得しており、実行時間も非常に短いことが分かります

N+1問題とは何か、SQL 初心者にわかるように説明してください。
ChatGPT
N+1問題は、オブジェクト関連マッピング（ORM）やデータベースクエリを使用してデータを取得する際に発生する問題の一つです。具体的には、一つのクエリで親オブジェクトを取得し、その後に関連する子オブジェクトを取得する際に発生します。

例えば、あるブログの記事とそのコメントを取得する場合を考えましょう。N+1問題が発生すると、最初に記事を取得するクエリが1回発行され、その後に各記事に関連するコメントを取得するために記事の数だけ追加のクエリが発行されることになります。つまり、親オブジェクト（記事）の取得が1回で、関連する子オブジェクト（コメント）の取得がN回行われるため、合計でN+1回のデータベースクエリが発生します。

この問題は、データベースへのアクセス回数が多くなり、性能の低下や無駄なデータベースクエリが発生する可能性があるため、効率的なデータ取得のために注意が必要です。対策としては、JOINやフェッチの最適化などを活用して、関連するデータを一度のクエリで取得することが挙げられます。

445 chars / 3 words

You
N+1問題に対してどのような対策があるか、主要な対策を説明してください。
ChatGPT
N+1問題に対する主要な対策としては、以下のような手法があります：

Eager Loading（積極的な読み込み）:

N+1問題の一般的な解決策は、Eager Loadingを使用することです。Eager Loadingは、関連するデータをあらかじめ一度のクエリで取得しておく方法です。これにより、親オブジェクトとその関連オブジェクトを同時に取得することができます。
具体的なORM（Object-Relational Mapping）フレームワークやクエリビルダによっては、Eager Loadingを実現するためのメソッドやクエリの設定が提供されています。
JOINを使用する:

データベースのJOIN句を利用して、複数のテーブルから必要な情報を1つのクエリで取得する方法もあります。これにより、親オブジェクトとその関連オブジェクトを同時に取得できます。
サブクエリを使用する:

サブクエリを使用して、親オブジェクトの取得と同時に関連オブジェクトもサブクエリで取得する方法もあります。これにより、N+1問題を回避できます。
バッチクエリ:

バッチクエリは、一度に複数のオブジェクトを取得するためのクエリです。これを使用することで、N+1問題を回避できます。
これらの対策を組み合わせて、具体的なシチュエーションに合わせて最適な方法を選択することが重要です。ORMやクエリビルダのドキュメントを確認し、それらのツールが提供する機能を活用することが効果的です。




EXPLAIN ANALYZE SELECT * FROM employees WHERE birth_date = '1968-08-03';

CREATE INDEX idx_birth_date ON employees(birth_date);

データベーステーブルにインデックスを作成することで、クエリの検索速度が向上する主な理由は、以下の通りです。

検索の効率向上: インデックスはデータの物理的な順序を変更せず、一種の目次として機能します。これにより、クエリが実行される際にデータを順に検索するのではなく、目次を利用して効率的に目的のデータを見つけることができます。

範囲検索の高速化: 特定の範囲内のデータを検索する際、インデックスを使用すると対象範囲のデータだけを効率的に抽出できます。これにより、全体のデータを走査する必要がなくなり、処理速度が向上します。

ソートの効率向上: ORDER BY 句などでソートが必要な場合、インデックスを使用することでソートが迅速に行われます。データはインデックス順に格納されているため、追加のソート処理が不要になります。

結合の高速化: インデックスを持つ列を使用した結合操作は、物理的なデータ配置に基づいて高速に実行できます。これにより、テーブル同士の結合が迅速に行われます。

ただし、インデックスの利用は検索速度の向上と引き換えに、データの挿入や更新、削除の処理において一部のオーバーヘッドを伴います。そのため、どの列にインデックスを貼るかは慎重に選択する必要があります。






クエリの実行計画を確認する:

クエリの実行計画を確認し、どのカラムが検索条件や結合に使用されているかを把握します。検索や結合の対象となるカラムにインデックスを作成すると効果的です。
頻繁に使用されるクエリを対象にする:

頻繁に実行されるクエリに対してのみインデックスを作成します。一時的なクエリや実行頻度の低いクエリには無駄なインデックスを作成しないようにします。
一般的なカーディナリティが高いカラムを選択:

カーディナリティが高い（ユニークな値が多い）カラムにインデックスを作成すると、検索効率が向上します。
複合インデックスの適切な利用:

複数のカラムを同時に使用する検索条件がある場合、複合インデックスを検討します。ただし、必要以上に複雑な複合インデックスは避けるべきです。
更新頻度を考慮する:

データの更新（挿入、更新、削除）が頻繁に行われるテーブルにおいて、インデックスの更新コストも考慮する必要があります。適切なバランスを見つけます。
適切なインデックスの種類を選択:

データベースシステムによっては、Bツリーインデックス、ハッシュインデックス、全文検索用のインデックスなどがあります。使用ケースに合わせて適切なインデックスの種類を選択します。
定期的なメンテナンス:

インデックスの効率的な利用を保つために、定期的なメンテナンスを行います。これには統計情報の更新や古いインデックスの削除が含まれます。
これらのベストプラクティスに基づいて、インデックスの作成を行うことで、データベースのパフォーマンスを向上させることができます。

トランザクションは、データベースにおいて一連の処理をまとめ、それを単一の処理として扱う仕組みです。トランザクションは、複数のデータベース操作（例: データの挿入、更新、削除など）が一体となり、一括して成功するか失敗するかが保証されることを目的としています。

トランザクションは主に以下の特性を持っています：

原子性（Atomicity）:

トランザクション内の全ての操作が成功するか、あるいは一つも成功しないかのどちらかとなります。途中でエラーが発生した場合、トランザクションはロールバックされ、変更が元に戻ります。
一貫性（Consistency）:

トランザクションが開始前と終了後でデータベースの整合性が保たれることを意味します。つまり、データベースは一貫性がある状態に保たれます。
隔離性（Isolation）:

複数のトランザクションが同時に実行されている場合でも、各トランザクションは互いに影響を与えないように隔離されます。つまり、トランザクションは他のトランザクションが終了するまで、その影響を他のトランザクションに見せないという性質を持ちます。
持続性（Durability）:

トランザクションが正常に終了すると、その変更は永続的にデータベースに保存されます。システムの障害や停電などが発生しても、トランザクションが正しく終了した時点までのデータは失われません。
トランザクションの導入により、データベースの整合性や信頼性が向上し、複雑な操作を安全かつ一貫して実行できるようになります。例えば、銀行取引において送金操作が途中で失敗すると、送金前の状態に戻すことができ、データベースが不整合な状態に陥ることを防ぎます。

ACIDは、データベーストランザクションが達成すべき四つの基本的な特性を指します。これらの特性は、トランザクションの信頼性とデータの整合性を確保するために重要です。以下がACIDの各特性です。

原子性（Atomicity）:

説明: トランザクションは、全ての操作が成功するか、あるいはどれも実行されなかったかのどちらかの状態になります。つまり、トランザクション内の操作は「すべて成功する」か「すべて失敗する」という単位で扱われます。
例: 銀行口座からの資金移動トランザクションが、送金、受取り、ログの書き込みの3つの操作からなり、いずれか1つでも失敗すればトランザクション全体が失敗となります。
一貫性（Consistency）:

説明: トランザクションの実行前と後で、データベースは一貫性を保つ必要があります。トランザクションが実行される前後でデータベースが一貫性を持っているとは、ある事前条件を満たした状態から、ある事後条件を満たす状態への遷移が正しく行われることを意味します。
例: 学生の成績データベースにおいて、成績は0から100までの範囲に収まる必要があり、トランザクションによって不正確な成績が挿入されることは許容されません。
分離性（Isolation）:

説明: 複数のトランザクションが同時に実行されている場合でも、それらのトランザクションが互いに影響しないように保つ必要があります。トランザクションが実行されている間に他のトランザクションがその途中結果を見ることがないようにします。
例: 銀行の取引が同時に行われている場合でも、一方の取引が終了するまで他の取引がその途中結果を見ることはありません。
耐久性（Durability）:

説明: トランザクションが正常に完了すると、その変更は永続的であり、データベースがクラッシュしても失われないようにする必要があります。データベースが再起動してもトランザクションの結果は継続的に保存されます。
例: ユーザーがデータベースに新しいレコードを挿入した場合、その変更はデータベースがクラッシュしても永続的に保存されます。
ACID特性は、データベースのトランザクションが信頼性を持ち、データの整合性が確保されることを保証するための基準として非常に重要です。


ロックは、データベースにおいて複数のトランザクションが同時に実行される際に、データの整合性を維持し、競合を防ぐために使用されるメカニズムです。ロックは主に以下の2つの種類に分かれます。

共有ロック（Shared Lock）:

複数のトランザクションが同じデータにアクセスすることを許可します。
読み取り操作において使用され、他のトランザクションによる共有ロックと併用可能です。
複数のトランザクションが同時にデータを読むことができますが、書き込み操作が行われると排他ロックが必要になります。
排他ロック（Exclusive Lock）:

データを読み取る・書き込むいずれの操作も許可しません。
書き込み操作時に使用され、他のトランザクションによる共有・排他ロックと併用できません。
一つのトランザクションがデータを更新しているとき、他のトランザクションは待機する必要があります。
同時実行制御において、トランザクションは次のような手順でロックを取得します。

ロックの要求:

トランザクションはデータにアクセスする前に、共有ロックまたは排他ロックを要求します。
ロックの取得:

データベース管理システムがロックを許可すると、トランザクションはロックを取得します。
取得できない場合は他のトランザクションがロックを解放するまで待機することがあります。
ロックの解放:

トランザクションが処理を完了すると、ロックを解放します。
ロックの解放により他のトランザクションがアクセスできるようになります。
このようにして、ロックを使用することでデータベースは同時実行制御を実現し、複数のトランザクションがデータにアクセスする際に整合性を保ちつつ競合を防ぎます。ただし、適切なロックの範囲や取得・解放のタイミングなどを考慮することが重要です。


UPDATE salaries
SET salary = salary * 2
WHERE emp_no = 10001 AND from_date = '1986-06-26';



mysql> START TRANSACTION;
Query OK, 0 rows affected (0.09 sec)

mysql> UPDATE salaries
    -> SET salary = salary * 2
    -> WHERE emp_no = 10001 AND from_date = '1986-06-26';^C
mysql> ^C
mysql> ^C
mysql>
mysql> UPDATE salaries
    -> SET salary = salary * 2
    -> WHERE emp_no = 10001 AND from_date = '1986-06-26';
ERROR 1205 (HY000): Lock wait timeout exceeded; try restarting transaction