--Задание 
--Написать крипт, добавляющий в БД vk, которую создали на занятии, 3 новые таблицы (с перечнем полей, указанием индексов и внешних ключей)
DROP TABLE IF EXISTS news;
CREATE TABLE news(
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL UNIQUE,
	media_id BIGINT UNSIGNED NOT NULL UNIQUE,
	created_at DATETIME DEFAULT NOW(),
	status ENUM('read', 'donotread'),
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (media_id) REFERENCES users(id)
);


DROP TABLE IF EXISTS favourites;
CREATE TABLE favourites(
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL UNIQUE,
	media_id BIGINT UNSIGNED NOT NULL UNIQUE,
	created_at DATETIME DEFAULT NOW(),
	status ENUM('save', 'donotsave'),
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (media_id) REFERENCES users(id)
); 

DROP TABLE IF EXISTS pay;
CREATE TABLE pay(
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL UNIQUE,
	`sum` MONEY,
	date_operation DATETIME DEFAULT NOW(),
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (pay_id) REFERENCES users(id)
);


DROP TABLE IF EXISTS pay;
CREATE TABLE pay(
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL UNIQUE,
	open_at DATETIME DEFAULT NOW(),
	close_at DATETIME DEFAULT NOW(),
	status ENUM('open', 'close'),
	`sum` MONEY,
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (payment_id) REFERENCES users(id)
);


