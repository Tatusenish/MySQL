DROP DATABASE IF EXISTS vk;
CREATE DATABASE vk;
USE vk;
-- 1-1
DROP TABLE IF EXISTS users;
CREATE TABLE users(
	id SERIAL,
    firstname VARCHAR(200),
    lastname VARCHAR(200) COMMENT '‘¿Ã»À»ﬂ',
    email VARCHAR(200),
    password_hash VARCHAR(200),
    phone BIGINT UNSIGNED
)COMMENT 'ﬁ«≈–€'; 
    
 DROP TABLE IF EXISTS profiles;
CREATE TABLE profiles(
	user_id BIGINT UNSIGNED NOT NULL,
	gender CHAR(1),
	birthday DATE,
	is_active TRUE,
	created_at DATETIME DEFAULT NOW()
);

ALTER TABLE profiles ADD CONSTRAINT fk_user_id
FOREIGN KEY (user_id) REFERENCES users(id)
ON UPDATE CASCADE
ON DELETE RESTRICT;

DROP TABLE IF EXISTS messages;
CREATE TABLE messages( 
	id SERIAL, 
	from_user_id BIGINT UNSIGNED NOT NULL, 
	to_user_id BIGINT UNSIGNED NOT NULL,
-- body VARCHAR(255),
 	body TEXT, 
 	created_at DATETIME default NOW(),
 	
 	FOREIGN KEY (from_user_id) REFERENCES users(id),
 	FOREIGN KEY (to_user_id) REFERENCES users(id)
 );
 
DROP TABLE IF EXISTS friend_requests;
CREATE TABLE friend_requests(
	initiator_user_id BIGINT UNSIGNED NOT NULL,
	target_user_id BIGINT UNSIGNED NOT NULL,
	-- status TINYINT UNSIGNED, 
	status ENUM('requested', 'approved', 'declined', 'unfriended'),
	requested_at DATETIME DEFAULT NOW(),
	update_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
	
	PRIMARY KEY (initiator_user_id, target_user_id),
	FOREIGN KEY (initiator_user_id) REFERENCES users(id),
 	FOREIGN KEY (target_user_id) REFERENCES users(id),
 	CHECK(initiator_user_id <> target_user_id)
);

DROP TABLE IF EXISTS communities;
CREATE TABLE communities(
	id SERIAL,
	name VARCHAR(200) UNIQUE,
	admin_user_id BIGINT UNSIGNED NOT NULL,
	
	INDEX(name),
	FOREIGN KEY (admin_user_id) REFERENCES users(id)
);
-- M-M
DROP TABLE IF EXISTS users_communities;
CREATE TABLE users_communities(
	user_id BIGINT UNSIGNED NOT NULL,
	community_id BIGINT UNSIGNED NOT NULL,
	
	PRIMARY KEY (user_id, community_id),
	FOREIGN KEY (user_id) REFERENCES users(id),
 	FOREIGN KEY (community_id) REFERENCES users(id)
 );

DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types(
	id SERIAL,
	name VARCHAR(255)
);

DROP TABLE IF EXISTS media;
CREATE TABLE media(
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL UNIQUE,
	media_type_id BIGINT UNSIGNED NOT NULL UNIQUE,
	body TEXT,
	-- file BLOB,
	filename VARCHAR(255),
	`size` INT,
	metadata JSON,
	created_at DATETIME DEFAULT NOW(),
	update_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (media_type_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS likes;
CREATE TABLE likes(
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL UNIQUE,
	media_id BIGINT UNSIGNED NOT NULL UNIQUE,
	created_at DATETIME DEFAULT NOW(),
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (media_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS news;
CREATE TABLE news(
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL,
	media_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT NOW(),
	status ENUM('read', 'donotread'),
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (media_id) REFERENCES users(id)
);


DROP TABLE IF EXISTS favourites;
CREATE TABLE favourites(
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL,
	media_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT NOW(),
	status ENUM('save', 'donotsave'),
	
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (media_id) REFERENCES users(id)
); 

DROP TABLE IF EXISTS payment;
CREATE TABLE payment(
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL,
	-- `sum` MONEY,
	date_operation DATETIME DEFAULT NOW(),
	
	FOREIGN KEY (user_id) REFERENCES users(id)
	-- FOREIGN KEY (pay_id) REFERENCES users(id)
);


DROP TABLE IF EXISTS pay;
CREATE TABLE pay(
	id SERIAL,
	user_id BIGINT UNSIGNED NOT NULL,
	open_at DATETIME DEFAULT NOW(),
	close_at DATETIME DEFAULT NOW(),
	status ENUM('open', 'close'),
	-- `sum` MONEY,
	
	FOREIGN KEY (user_id) REFERENCES users(id)
	-- FOREIGN KEY (payment_id) REFERENCES users(id)
);


