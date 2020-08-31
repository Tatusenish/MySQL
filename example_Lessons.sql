/* Задача 1
Создайте базу данных example, разместите в ней таблицу users, 
состоящую из двух столбцов, числового id и строкового name.
*/

DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT UNSIGNED,
  name VARCHAR(255) 
);

/* Задача 1
Создайте дамп базы данных example из предыдущего задания, 
разверните содержимое дампа в новую базу данных sample.
*/
 
 /* Задача 1
mysqldump -u root -p example.sql > data-dump.sql
mysql -u root -p
CREATE DATABASE sample;
mysql -u root -p sample.sql < data-dump.sql
USE sample.sql
*/
