-- Стандартный онлайн-магазин, прототипом был WildBerries
-- Минимальный набор для минимального каталога товаров (товары, производители, продавцы, характеристика товара, его фото, заказ и возможность добавить в избранное)
-- пользователи и их профайлы, указан счет с возможностью закрытия открытия и пополнения, а также само совершение платежа

DROP DATABASE IF EXISTS shop;
CREATE DATABASE shop;
USE shop;

DROP TABLE IF EXISTS products;
CREATE  TABLE products(
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  image VARCHAR(255) NOT NULL,
  price DECIMAL(20,2) NOT NULL,
  shipping INT(11),
  in_stock TRUE,
  manufacturer_id SMALLINT(6) NOT NULL,
  seller_id VARCHAR(255) NOT NULL,
  user_id INT(11),
  
  PRIMARY KEY (id),
  UNIQUE KEY id (id)
);

DROP TABLE IF EXISTS manufacturers;
CREATE  TABLE manufacturers(
  product_id INT(11) NOT NULL,
  name VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  logo VARCHAR(255) NOT NULL,
  site VARCHAR(255) NOT NULL,
  
  FOREIGN KEY (product_id) REFERENCES products(id)
 );

DROP TABLE IF EXISTS sellers;
CREATE  TABLE sellers(
  id SERAIL,
  product_id INT(11) NOT NULL,
  name VARCHAR(255) NOT NULL,
  
  FOREIGN KEY (product_id) REFERENCES products(id)
 );
    
  
DROP TABLE IF EXISTS product_properties;
CREATE  TABLE product_properties( 
  id INT(11) NOT NULL,
  product_id INT(11) NOT NULL,
  model VARCHAR(255) NOT NULL,
  `size` VARCHAR(255) NOT NULL,
  price DECIMAL(20,2) NOT NULL,
  quantity INT(11) NOT NULL,
  
  FOREIGN KEY (product_id) REFERENCES products(id)
 );


DROP TABLE IF EXISTS product_images;
CREATE  TABLE product_images(
	id INT(11) NOT NULL,
	product_id INT(11) NOT NULL,
	image VARCHAR(255) NOT NULL,
	title VARCHAR(255) NOT NULL,

	FOREIGN KEY (product_id) REFERENCES products(id)
); 


DROP TABLE IF EXISTS product_orders;
CREATE  TABLE product_orders(
	id INT(15) NOT NULL,
	product_id INT(11) NOT NULL,
	created_at DATETIME DEFAULT NOW(),
	price DECIMAL(20,2) NOT NULL,
	
	FOREIGN KEY (product_id) REFERENCES products(id)
); 
 

DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id SERIAL,
	firstname VARCHAR(200),
    lastname VARCHAR(200),
    email VARCHAR(200),
    password_hash VARCHAR(200),
    phone BIGINT UNSIGNED
); 

-- 	FOREIGN KEY (products_id) REFERENCES users(id)
 	
/*ALTER TABLE products ADD CONSTRAINT product_id
	FOREIGN KEY (user_id) REFERENCES users(id)
	ON UPDATE CASCADE
	ON DELETE RESTRICT;*/

DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles(
	user_id BIGINT UNSIGNED NOT NULL,
	gender CHAR(1),
	birthday DATE,
	is_active TRUE,
	created_at DATETIME DEFAULT NOW(),
	
	FOREIGN KEY (user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS favourites;
CREATE TABLE favourites(
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL,
	product_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT NOW(),
	status ENUM('save', 'donotsave'),
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (product_id) REFERENCES users(id)
); 

DROP TABLE IF EXISTS pay;
CREATE TABLE pay(
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL,
	open_at DATETIME DEFAULT NOW(),
	close_at DATETIME DEFAULT NOW(),
	status ENUM('open', 'close'),
	`sum` DECIMAL,
	-- НЕ ХОЧЕТ MONEY ПРИНИМАТЬ
	
	FOREIGN KEY (user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS payment;
CREATE TABLE payment(
	id SERIAL,
	pay_id BIGINT UNSIGNED NOT NULL,
	user_id BIGINT UNSIGNED NOT NULL,
	`sum` DECIMAL,
	-- НЕ ХОЧЕТ MONEY ПРИНИМАТЬ
	date_operation DATETIME DEFAULT NOW(),
	status INT(11),
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (pay_id) REFERENCES users(id)
);





















 
    


