
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

02/29/24 19:47:36:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main sudo mysql

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 14
Server version: 8.0.36-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
mysql>
mysql> ls
    -> q
    -> ^C
mysql> quit
Bye
02/29/24 19:48:56:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main sudo mysql_secure_installation

Securing the MySQL server deployment.

Connecting to MySQL using a blank password.
The 'validate_password' component is installed on the server.
The subsequent steps will run with the existing configuration
of the component.

Skipping password set for root as authentication with auth_socket is used by default.
If you would like to use password authentication instead, this can be done with the "ALTER_USER" command.
See https://dev.mysql.com/doc/refman/8.0/en/alter-user.html#alter-user-password-management for more information.

By default, a MySQL installation has an anonymous user,
allowing anyone to log into MySQL without having to have
a user account created for them. This is intended only for
testing, and to make the installation go a bit smoother.
You should remove them before moving into a production
environment.

Remove anonymous users? (Press y|Y for Yes, any other key for No) : y
Success.


Normally, root should only be allowed to connect from
'localhost'. This ensures that someone cannot guess at
the root password from the network.

Disallow root login remotely? (Press y|Y for Yes, any other key for No) : y
Success.

By default, MySQL comes with a database named 'test' that
anyone can access. This is also intended only for testing,
and should be removed before moving into a production
environment.


Remove test database and access to it? (Press y|Y for Yes, any other key for No) : y
 - Dropping test database...
Success.

 - Removing privileges on test database...
Success.

Reloading the privilege tables will ensure that all changes
made so far will take effect immediately.

Reload privilege tables now? (Press y|Y for Yes, any other key for No) : y
Success.

All done!
02/29/24 19:49:12:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main
02/29/24 19:49:13:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main
02/29/24 19:49:13:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main sudo mysql

Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 20
Server version: 8.0.36-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> flush privileges
    -> ;
Query OK, 0 rows affected (0.01 sec)

mysql> ALTER USER 'root'@'localhost' IDENTIFIED BY 'Imas87651641';
Query OK, 0 rows affected (0.01 sec)

mysql> quit
Bye
02/29/24 20:06:04:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main mysql -u root -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 21
Server version: 8.0.36-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
mysql>
mysql>
mysql> ls
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ls' at line 1
mysql> list;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'list' at line 1
mysql> quit
Bye
02/29/24 20:12:42:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main service mysql status
 * /usr/bin/mysqladmin  Ver 8.0.36-0ubuntu0.22.04.1 for Linux on x86_64 ((Ubuntu))
Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Server version          8.0.36-0ubuntu0.22.04.1
Protocol version        10
Connection              Localhost via UNIX socket
UNIX socket             /var/run/mysqld/mysqld.sock
Uptime:                 27 min 55 sec

Threads: 2  Questions: 37  Slow queries: 0  Opens: 144  Flush tables: 3  Open tables: 63  Queries per second avg: 0.022
02/29/24 20:13:09:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main mysql.server restart
zsh: command not found: mysql.server
02/29/24 20:13:21:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main /etc/init.d/mysqld restart
zsh: correct '/etc/init.d/mysqld' to '/etc/init.d/mysql' [nyae]? y
 * Stopping MySQL database server mysqld                                                                                           [ OK ]
 * Starting MySQL database server mysqld                                                                                                  su: warning: cannot change directory to /nonexistent: No such file or directory
                                                                                                                                   [ OK ]
02/29/24 20:13:52:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main
02/29/24 20:13:54:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main
02/29/24 20:13:55:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main mysql -u root -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 8.0.36-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> exit
Bye
02/29/24 20:17:25:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main  ss -atn
State           Recv-Q          Send-Q                   Local Address:Port                    Peer Address:Port          Process
LISTEN          0               511                          127.0.0.1:41541                        0.0.0.0:*
LISTEN          0               70                           127.0.0.1:33060                        0.0.0.0:*
LISTEN          0               128                            0.0.0.0:22                           0.0.0.0:*
LISTEN          0               151                          127.0.0.1:3306                         0.0.0.0:*
ESTAB           0               0                            127.0.0.1:59158                      127.0.0.1:41541
ESTAB           0               0                            127.0.0.1:59162                      127.0.0.1:41541
ESTAB           0               0                            127.0.0.1:41541                      127.0.0.1:59162
ESTAB           0               203                          127.0.0.1:41541                      127.0.0.1:59158
LISTEN          0               128                               [::]:22                              [::]:*
02/29/24 20:18:25:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main sudo mysql_secure_installation

Securing the MySQL server deployment.

Connecting to MySQL using a blank password.
The 'validate_password' component is installed on the server.
The subsequent steps will run with the existing configuration
of the component.

Skipping password set for root as authentication with auth_socket is used by default.
If you would like to use password authentication instead, this can be done with the "ALTER_USER" command.
See https://dev.mysql.com/doc/refman/8.0/en/alter-user.html#alter-user-password-management for more information.

By default, a MySQL installation has an anonymous user,
allowing anyone to log into MySQL without having to have
a user account created for them. This is intended only for
testing, and to make the installation go a bit smoother.
You should remove them before moving into a production
environment.

Remove anonymous users? (Press y|Y for Yes, any other key for No) : y
Success.


Normally, root should only be allowed to connect from
'localhost'. This ensures that someone cannot guess at
the root password from the network.

Disallow root login remotely? (Press y|Y for Yes, any other key for No) : n

 ... skipping.
By default, MySQL comes with a database named 'test' that
anyone can access. This is also intended only for testing,
and should be removed before moving into a production
environment.


Remove test database and access to it? (Press y|Y for Yes, any other key for No) : y
 - Dropping test database...
Success.

 - Removing privileges on test database...
Success.

Reloading the privilege tables will ensure that all changes
made so far will take effect immediately.

Reload privilege tables now? (Press y|Y for Yes, any other key for No) : y
Success.

All done!
02/29/24 20:20:46:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main /etc/init.d/mysql restart
 * Stopping MySQL database server mysqld                                                                                           [ OK ]
 * Starting MySQL database server mysqld                                                                                                  su: warning: cannot change directory to /nonexistent: No such file or directory
                                                                                                                                   [ OK ]
02/29/24 20:21:12:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main sudo mysql
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 12
Server version: 8.0.36-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Imas87651641';
ERROR 1819 (HY000): Your password does not satisfy the current policy requirements
mysql> ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Im@s87651641';
Query OK, 0 rows affected (0.01 sec)

mysql> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.01 sec)

mysql> exit
Bye
02/29/24 20:23:25:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main sudo mysql
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: NO)
02/29/24 20:23:29:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main mysql -u root -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 14
Server version: 8.0.36-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> exit
Bye
02/29/24 20:23:45:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main CREATE DATABASE mydatabase;
02/29/24 20:34:30:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main mysql -u root -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 18
Server version: 8.0.36-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE mydatabase;
Query OK, 1 row affected (0.02 sec)

mysql> USE mydatabase
Database changed
mysql> ls
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ls' at line 1
mysql> list
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'list' at line 1
mysql> show;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> exit
Bye
02/29/24 20:35:18:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main mysql -u root -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 19
Server version: 8.0.36-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql>
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mydatabase         |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> DROP mydatabase ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mydatabase' at line 1
mysql> DROP DATABASE mydatabase ;
Query OK, 0 rows affected (0.01 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)

mysql> CREATE DATABASE practice;
Query OK, 1 row affected (0.01 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| practice           |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> CREATE USER 'ryuma'@'localhost' IDENTIFIED BY 'Im@s87651641';
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT User, Host FROM mysql.user;
+------------------+-----------+
| User             | Host      |
+------------------+-----------+
| debian-sys-maint | localhost |
| mysql.infoschema | localhost |
| mysql.session    | localhost |
| mysql.sys        | localhost |
| root             | localhost |
| ryuma            | localhost |
+------------------+-----------+
6 rows in set (0.00 sec)

mysql> GRANT ALL PRIVILEGES ON *.* TO 'ryuma'@'localhost' WITH GRANT OPTION;
Query OK, 0 rows affected (0.02 sec)

mysql> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.00 sec)

mysql> DROP USER 'ryuma'@'localhost'
    -> ;
Query OK, 0 rows affected (0.01 sec)

mysql> SHOW USERS
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'USERS' at line 1
mysql> SELECT User, Host FROM mysql.user;
+------------------+-----------+
| User             | Host      |
+------------------+-----------+
| debian-sys-maint | localhost |
| mysql.infoschema | localhost |
| mysql.session    | localhost |
| mysql.sys        | localhost |
| root             | localhost |
+------------------+-----------+
5 rows in set (0.00 sec)

mysql>
bck:
^C
mysql> CREATE USER 'example_user'@'localhost' IDENTIFIED BY 'example_password';
ERROR 1819 (HY000): Your password does not satisfy the current policy requirements
mysql> DROP USER 'example_user'@'localhost'
    -> ;
ERROR 1396 (HY000): Operation DROP USER failed for 'example_user'@'localhost'
mysql> DROP USER 'example_user'@'localhost';
ERROR 1396 (HY000): Operation DROP USER failed for 'example_user'@'localhost'
mysql> exit
Bye
02/29/24 21:51:35:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main mysql -u root -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 22
Server version: 8.0.36-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SELECT User, Host FROM mysql.user;
+------------------+-----------+
| User             | Host      |
+------------------+-----------+
| debian-sys-maint | localhost |
| mysql.infoschema | localhost |
| mysql.session    | localhost |
| mysql.sys        | localhost |
| root             | localhost |
+------------------+-----------+
5 rows in set (0.00 sec)

mysql> SELECT User, Host FROM mysql.user;^C
mysql> CREATE USER 'ryuma'@'localhost' IDENTIFIED BY 'Imas87651641';
ERROR 1819 (HY000): Your password does not satisfy the current policy requirements
mysql> CREATE USER 'ryuma'@'localhost' IDENTIFIED BY 'Im@s87651641';
Query OK, 0 rows affected (0.01 sec)

mysql> SELECT User, Host FROM mysql.user;
+------------------+-----------+
| User             | Host      |
+------------------+-----------+
| debian-sys-maint | localhost |
| mysql.infoschema | localhost |
| mysql.session    | localhost |
| mysql.sys        | localhost |
| root             | localhost |
| ryuma            | localhost |
+------------------+-----------+
6 rows in set (0.00 sec)

mysql> GRANT ALL PRIVILEGES ON *.* TO 'ryuma'@'localhost' WITH GRANT OPTION;
Query OK, 0 rows affected (0.02 sec)

mysql> FLUSH PRIVILEGES;
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT User, Host FROM mysql.user;
+------------------+-----------+
| User             | Host      |
+------------------+-----------+
| debian-sys-maint | localhost |
| mysql.infoschema | localhost |
| mysql.session    | localhost |
| mysql.sys        | localhost |
| root             | localhost |
| ryuma            | localhost |
+------------------+-----------+
6 rows in set (0.00 sec)

mysql> exit
Bye
02/29/24 21:55:34:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main mysql -u ryuma -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 23
Server version: 8.0.36-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOE DATABASES
    -> ;C^C
mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| practice           |
| sys                |
+--------------------+
5 rows in set (0.01 sec)

mysql> USE practice;
Database changed
mysql> USE practice;F^C
mysql> SELECT User, Host FROM mysql.user;^C
mysql> CREATE TABLE users (
    ->     user_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     username VARCHAR(255) NOT NULL,
    ->     email VARCHAR(255) NOT NULL,
    ->     birthdate DATE,
    ->     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> SHOW TABLES
    -> ;
+--------------------+
| Tables_in_practice |
+--------------------+
| users              |
+--------------------+
1 row in set (0.00 sec)

mysql> ^C
mysql> ALTER TABLE users ADD COLUMN phone_number VARCHAR(20);
Query OK, 0 rows affected (0.05 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> ^C
mysql> DESCRIBE users;
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
6 rows in set (0.02 sec)

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

mysql>
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

mysql>
mysql>
mysql>
mysql> ALTER TABLE users DROP COLUMN phone_number;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESCRIBE users
    -> ;
+------------+--------------+------+-----+-------------------+-------------------+
| Field      | Type         | Null | Key | Default           | Extra             |
+------------+--------------+------+-----+-------------------+-------------------+
| user_id    | int          | NO   | PRI | NULL              | auto_increment    |
| username   | varchar(255) | NO   |     | NULL              |                   |
| email      | varchar(255) | NO   |     | NULL              |                   |
| birthdate  | date         | YES  |     | NULL              |                   |
| created_at | timestamp    | YES  |     | CURRENT_TIMESTAMP | DEFAULT_GENERATED |
+------------+--------------+------+-----+-------------------+-------------------+
5 rows in set (0.00 sec)

mysql> DROP users;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'users' at line 1
mysql> DROP TABLE users;
Query OK, 0 rows affected (0.02 sec)

mysql> ^C
mysql> ALTER TABLE users DROP COLUMN phone_number;^C
mysql> SHOW TABLE
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> SHOW TABLES;
Empty set (0.00 sec)

mysql> CREATE TABLE users (
    ->     user_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     username VARCHAR(255) NOT NULL,
    ->     email VARCHAR(255) NOT NULL,
    ->     birthdate DATE,
    ->     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> SHOW TABLES;
+--------------------+
| Tables_in_practice |
+--------------------+
| users              |
+--------------------+
1 row in set (0.00 sec)

mysql>
mysql>
mysql> INSERT INTO users (name, email)
    -> VALUES ('John Doe', 'john@example.com');
ERROR 1054 (42S22): Unknown column 'name' in 'field list'
mysql> INSERT INTO users (username, email) VALUES ('John Doe', 'john@example.com');
Query OK, 1 row affected (0.01 sec)

mysql>
mysql> SELECT * FROM users
    -> ;
+---------+----------+------------------+-----------+---------------------+
| user_id | username | email            | birthdate | created_at          |
+---------+----------+------------------+-----------+---------------------+
|       1 | John Doe | john@example.com | NULL      | 2024-02-29 22:32:31 |
+---------+----------+------------------+-----------+---------------------+
1 row in set (0.00 sec)

mysql> UPDATE users
    -> SET username = ''
    -> WHERE id = 1;
ERROR 1054 (42S22): Unknown column 'id' in 'where clause'
mysql> UPDATE users SET username = 'hirayama' WHERE user_id = 1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM users
    -> ;
+---------+----------+------------------+-----------+---------------------+
| user_id | username | email            | birthdate | created_at          |
+---------+----------+------------------+-----------+---------------------+
|       1 | hirayama | john@example.com | NULL      | 2024-02-29 22:32:31 |
+---------+----------+------------------+-----------+---------------------+
1 row in set (0.00 sec)

mysql> ^C
mysql> DELETE FROM users;
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM users
    -> ;
Empty set (0.00 sec)

mysql> exit
Bye
02/29/24 22:54:21:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main touch sql.sql
02/29/24 22:54:41:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main git commit -m "sql"
On branch main
Your branch is up to date with 'origin/main'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        sql.sql

nothing added to commit but untracked files present (use "git add" to track)
02/29/24 22:55:13:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main git add .
02/29/24 22:55:23:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main git commit -m "sql"
[main c8c4246] sql
 1 file changed, 59 insertions(+)
 create mode 100644 sql.sql
02/29/24 22:55:25:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main git clone https://github.com/datacharmer/test_db.git
Cloning into 'test_db'...
remote: Enumerating objects: 121, done.
remote: Counting objects: 100% (1/1), done.
remote: Total 121 (delta 0), reused 0 (delta 0), pack-reused 120
Receiving objects: 100% (121/121), 74.27 MiB | 14.00 MiB/s, done.
Resolving deltas: 100% (62/62), done.
Updating files: 100% (25/25), done.
02/29/24 22:56:53:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main ls
1NF.txt  2NF.txt  3NF.txt  BCNF.txt  EC.pu  EC_old.pu  README.md  entity.txt  out  sql.sql  table.md  test_db  what_is_rdb.txt
02/29/24 22:57:21:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice main cd test_db
Changelog                      images                  load_salaries1.dump  sakila                  test_versions.sh
README.md                      load_departments.dump   load_salaries2.dump  show_elapsed.sql
employees.sql                  load_dept_emp.dump      load_salaries3.dump  sql_test.sh
employees_partitioned.sql      load_dept_manager.dump  load_titles.dump     test_employees_md5.sql
employees_partitioned_5.1.sql  load_employees.dump     objects.sql          test_employees_sha.sql
02/29/24 22:57:44:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice/test_db master mysql < employees.sql
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: NO)
02/29/24 22:58:13:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice/test_db master mysql < employees.sql -p
Enter password:
INFO
CREATING DATABASE STRUCTURE
INFO
storage engine: InnoDB
INFO
LOADING departments
INFO
LOADING employees
INFO
LOADING dept_emp
INFO
LOADING dept_manager
INFO
LOADING titles
INFO
LOADING salaries
data_load_time_diff
00:00:33
02/29/24 22:59:08:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice/test_db master
02/29/24 23:05:53:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice/test_db master
02/29/24 23:05:54:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice/test_db master mysql -t < test_employees_md5.sql -p
Enter password:
+----------------------+
| INFO                 |
+----------------------+
| TESTING INSTALLATION |
+----------------------+
+--------------+------------------+----------------------------------+
| table_name   | expected_records | expected_crc                     |
+--------------+------------------+----------------------------------+
| departments  |                9 | d1af5e170d2d1591d776d5638d71fc5f |
| dept_emp     |           331603 | ccf6fe516f990bdaa49713fc478701b7 |
| dept_manager |               24 | 8720e2f0853ac9096b689c14664f847e |
| employees    |           300024 | 4ec56ab5ba37218d187cf6ab09ce1aa1 |
| salaries     |          2844047 | fd220654e95aea1b169624ffe3fca934 |
| titles       |           443308 | bfa016c472df68e70a03facafa1bc0a8 |
+--------------+------------------+----------------------------------+

+--------------+------------------+----------------------------------+
| table_name   | found_records    | found_crc                        |
+--------------+------------------+----------------------------------+
| departments  |                9 | d1af5e170d2d1591d776d5638d71fc5f |
| dept_emp     |           331603 | ccf6fe516f990bdaa49713fc478701b7 |
| dept_manager |               24 | 8720e2f0853ac9096b689c14664f847e |
| employees    |           300024 | 4ec56ab5ba37218d187cf6ab09ce1aa1 |
| salaries     |          2844047 | fd220654e95aea1b169624ffe3fca934 |
| titles       |           443308 | bfa016c472df68e70a03facafa1bc0a8 |
+--------------+------------------+----------------------------------+
+--------------+---------------+-----------+
| table_name   | records_match | crc_match |
+--------------+---------------+-----------+
| departments  | OK            | ok        |
| dept_emp     | OK            | ok        |
| dept_manager | OK            | ok        |
| employees    | OK            | ok        |
| salaries     | OK            | ok        |
| titles       | OK            | ok        |
+--------------+---------------+-----------+
+------------------+
| computation_time |
+------------------+
| 00:00:43         |
+------------------+
+---------+--------+
| summary | result |
+---------+--------+
| CRC     | OK     |
| count   | OK     |
+---------+--------+
02/29/24 23:07:40:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice/test_db master
02/29/24 23:07:40:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice/test_db master mysql -u ryuma -p < employees.sql
Enter password:
INFO
CREATING DATABASE STRUCTURE
INFO
storage engine: InnoDB
INFO
LOADING departments
INFO
LOADING employees
INFO
LOADING dept_emp
INFO
LOADING dept_manager
INFO
LOADING titles
INFO
LOADING salaries
data_load_time_diff
00:00:30
02/29/24 23:18:15:RYUMA:root: /mnt/c/Users/im201/Desktop/apprentice/databese_practice/test_db master mysql -u ryuma -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 28
Server version: 8.0.36-0ubuntu0.22.04.1 (Ubuntu)

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES
    -> ;
+--------------------+
| Database           |
+--------------------+
| employees          |
| information_schema |
| mysql              |
| performance_schema |
| practice           |
| sys                |
+--------------------+
6 rows in set (0.01 sec)

mysql> use employees
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> SHOW TABLES;
+----------------------+
| Tables_in_employees  |
+----------------------+
| current_dept_emp     |
| departments          |
| dept_emp             |
| dept_emp_latest_date |
| dept_manager         |
| employees            |
| salaries             |
| titles               |
+----------------------+
8 rows in set (0.01 sec)

mysql>
mysql> SELECT * FROM dept_manager
    -> ;
+--------+---------+------------+------------+
| emp_no | dept_no | from_date  | to_date    |
+--------+---------+------------+------------+
| 110022 | d001    | 1985-01-01 | 1991-10-01 |
| 110039 | d001    | 1991-10-01 | 9999-01-01 |
| 110085 | d002    | 1985-01-01 | 1989-12-17 |
| 110114 | d002    | 1989-12-17 | 9999-01-01 |
| 110183 | d003    | 1985-01-01 | 1992-03-21 |
| 110228 | d003    | 1992-03-21 | 9999-01-01 |
| 110303 | d004    | 1985-01-01 | 1988-09-09 |
| 110344 | d004    | 1988-09-09 | 1992-08-02 |
| 110386 | d004    | 1992-08-02 | 1996-08-30 |
| 110420 | d004    | 1996-08-30 | 9999-01-01 |
| 110511 | d005    | 1985-01-01 | 1992-04-25 |
| 110567 | d005    | 1992-04-25 | 9999-01-01 |
| 110725 | d006    | 1985-01-01 | 1989-05-06 |
| 110765 | d006    | 1989-05-06 | 1991-09-12 |
| 110800 | d006    | 1991-09-12 | 1994-06-28 |
| 110854 | d006    | 1994-06-28 | 9999-01-01 |
| 111035 | d007    | 1985-01-01 | 1991-03-07 |
| 111133 | d007    | 1991-03-07 | 9999-01-01 |
| 111400 | d008    | 1985-01-01 | 1991-04-08 |
| 111534 | d008    | 1991-04-08 | 9999-01-01 |
| 111692 | d009    | 1985-01-01 | 1988-10-17 |
| 111784 | d009    | 1988-10-17 | 1992-09-08 |
| 111877 | d009    | 1992-09-08 | 1996-01-03 |
| 111939 | d009    | 1996-01-03 | 9999-01-01 |
+--------+---------+------------+------------+
24 rows in set (0.01 sec)

mysql> DESCRIBE dept_manager
    -> ;
+-----------+---------+------+-----+---------+-------+
| Field     | Type    | Null | Key | Default | Extra |
+-----------+---------+------+-----+---------+-------+
| emp_no    | int     | NO   | PRI | NULL    |       |
| dept_no   | char(4) | NO   | PRI | NULL    |       |
| from_date | date    | NO   |     | NULL    |       |
| to_date   | date    | NO   |     | NULL    |       |
+-----------+---------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql>

mysql> DESCRIBE dept_manager
    -> ;
+-----------+---------+------+-----+---------+-------+
| Field     | Type    | Null | Key | Default | Extra |
+-----------+---------+------+-----+---------+-------+
| emp_no    | int     | NO   | PRI | NULL    |       |
| dept_no   | char(4) | NO   | PRI | NULL    |       |
| from_date | date    | NO   |     | NULL    |       |
| to_date   | date    | NO   |     | NULL    |       |
+-----------+---------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql>
mysql>
mysql> SELECT emp_no FROM dept_manager
    -> ;
+--------+
| emp_no |
+--------+
| 110022 |
| 110039 |
| 110085 |
| 110114 |
| 110183 |
| 110228 |
| 110303 |
| 110344 |
| 110386 |
| 110420 |
| 110511 |
| 110567 |
| 110725 |
| 110765 |
| 110800 |
| 110854 |
| 111035 |
| 111133 |
| 111400 |
| 111534 |
| 111692 |
| 111784 |
| 111877 |
| 111939 |
+--------+
24 rows in set (0.00 sec)

mysql> SELECT emp_no AS employee_no FROM dept_manager;
+-------------+
| employee_no |
+-------------+
|      110022 |
|      110039 |
|      110085 |
|      110114 |
|      110183 |
|      110228 |
|      110303 |
|      110344 |
|      110386 |
|      110420 |
|      110511 |
|      110567 |
|      110725 |
|      110765 |
|      110800 |
|      110854 |
|      111035 |
|      111133 |
|      111400 |
|      111534 |
|      111692 |
|      111784 |
|      111877 |
|      111939 |
+-------------+
24 rows in set (0.00 sec)

mysql>
mysql> SELECT DISTINCT dept_no FROM dept_manager;
+---------+
| dept_no |
+---------+
| d001    |
| d002    |
| d003    |
| d004    |
| d005    |
| d006    |
| d007    |
| d008    |
| d009    |
+---------+
9 rows in set (0.00 sec)

mysql> SELECT DISTINCT emp_no FROM dept_manager
    -> ;
+--------+
| emp_no |
+--------+
| 110022 |
| 110039 |
| 110085 |
| 110114 |
| 110183 |
| 110228 |
| 110303 |
| 110344 |
| 110386 |
| 110420 |
| 110511 |
| 110567 |
| 110725 |
| 110765 |
| 110800 |
| 110854 |
| 111035 |
| 111133 |
| 111400 |
| 111534 |
| 111692 |
| 111784 |
| 111877 |
| 111939 |
+--------+
24 rows in set (0.00 sec)

mysql> SELECT * FROM dept_manager LIMIT 10
    -> ;
+--------+---------+------------+------------+
| emp_no | dept_no | from_date  | to_date    |
+--------+---------+------------+------------+
| 110022 | d001    | 1985-01-01 | 1991-10-01 |
| 110039 | d001    | 1991-10-01 | 9999-01-01 |
| 110085 | d002    | 1985-01-01 | 1989-12-17 |
| 110114 | d002    | 1989-12-17 | 9999-01-01 |
| 110183 | d003    | 1985-01-01 | 1992-03-21 |
| 110228 | d003    | 1992-03-21 | 9999-01-01 |
| 110303 | d004    | 1985-01-01 | 1988-09-09 |
| 110344 | d004    | 1988-09-09 | 1992-08-02 |
| 110386 | d004    | 1992-08-02 | 1996-08-30 |
| 110420 | d004    | 1996-08-30 | 9999-01-01 |
+--------+---------+------------+------------+
10 rows in set (0.00 sec)