-- Задание 1
-- Заполнить все таблицы БД vk данными (по 10-100 записей в каждой таблице)

INSERT INTO users(id, firstname, lastname, email, phone)
VALUES 
(11, 'Reuben', 'Nienow', 'arl1o@example.ru', '89528796560'),
('099', 'Sam', 'Kupal', 'tel1ly@mail.com', '4328967' ),
('1', 'Brando', 'Herzog', 'omer59@example.org', 'ecc2379760d0ffb050bfd9024baaff3b6e32eb41', '238569'),
('2', 'Bret', 'Kris', 'tressa.beer@example.net', '941d34767f661f401f7ac2a514bfa73afc1f8683', '1'),
('3', 'Jadon', 'Aufderhar', 'xschultz@example.net', 'cd6e6db806e7cdd1693127f55139094a8673b0c6', '426024'),
('4', 'Judy', 'Blick', 'hermann.scot@example.org', '45eda0f92613a04f8b078ccb05f698ef482636b4', '4051743840'),
('5', 'Burley', 'Adams', 'chandler.weissnat@example.org', '3f414a39bf87f992d9e3d03b84e10a741aec91a5', '280193'),
('6', 'Juwan', 'Luettgen', 'abernier@example.com', '52d4092e9e7f9f0fa728adf667202a4c5dbdb35a', '66'),
('7', 'Steve', 'Reichert', 'pheaney@example.net', '0858dfda886277351b31aa6dc70307295ae09bd4', '761'),
('8', 'Rashawn', 'Oberbrunner', 'xsipes@example.org', 'c39c367ccc009d8250c4e9f8479127b544e61a65', '1'),
('9', 'Elaina', 'Mayer', 'farrell.arvel@example.com', 'cddf60d3cd5b51fab88cb8555926aa753a963819', '0'),
('10', 'Alvis', 'Lemke', 'brooks.kassulke@example.com', '18b4ba5d96259d75bd0f2678fc6c4a4720a67ead', '898418'),
('11', 'Jovany', 'Moen', 'lesch.fabian@example.com', '4db134baa0cd54e01bd6ee12f3634f6084700d72', '1'),
('12', 'Tess', 'Boyer', 'eudora46@example.net', '719fa9555e59a0a7cd4b09811406e04eb41ba7ee', '404'),
('13', 'Leatha', 'Schaefer', 'leuschke.aniya@example.org', '8e38377eb1621e92bfd3c3e567e5d2bea7085fdc', '1');


INSERT INTO `profiles` (`id`, `gender`, `birthday`, `is_active`, `created_at`) 
VALUES 
('11', NULL, '2008-12-31', TRUE, '2005-12-27 10:07:22'),
('099', NULL, '1977-09-24', TRUE, '2001-11-20 06:01:50'),
('1', NULL, '1990-11-23', TRUE, '1990-09-29 16:12:52'),
('2', NULL, '2019-04-25', TRUE, '1974-01-20 21:05:21'),
('3', NULL, '1973-02-13', TRUE, '1983-01-16 18:42:30'),
('4', NULL, '1971-08-17', TRUE, '2020-01-30 16:23:48'),
('5', NULL, '2018-10-27', TRUE, '1994-10-08 03:55:27'),
('6', NULL, '2015-12-08', TRUE, '2000-12-19 05:52:26'),
('7', NULL, '2009-03-02', TRUE, '1993-01-17 10:48:49'),
('8', NULL, '1994-12-24', TRUE, '2019-07-20 16:07:05'),
('9', NULL, '1989-02-13', TRUE, '1994-05-14 10:23:06'),
('10', NULL, '2004-08-10', TRUE, '1971-10-13 12:30:13'),
('11', NULL, '1989-01-09', TRUE, '2006-05-16 23:13:21'),
('12', NULL, '1986-11-06', TRUE, '1978-08-19 02:43:23');


INSERT INTO messages (id, from_user_id , to_user_id , body)
VALUES
('01', '11', '10', 'bvdkjbhvfdhdsljd lgjdlgjdljsdofu wfh rfhiifedghkbn'),
('02', '11', '10', 'sfd fwfhehfjdehyfdhfid difgyesf skuvifhedjmhgdjufws'),
('03', '11', '6', 'dshdfuysddf fddsyhfsa\qwwaurekl hfdsy fdfgdjes dfv'),
('04', '12', '6', 'sx fshdjwshdkwhdsh dfjs cmkxhcjsdgvusfgv z ifwd'),
('05', '9', '4', 'csadnsjhdjk ksdhsjgdf mdvsdf|ikdljv,cxvkdhfvjdgfj sdggdrwa '),
('06', '9', '099', 'sfjswkdf hswkfhdjkhfvdjgfdjhfosdfl ewfidyshf gvshgdfjws f'),
('07', '9', '3', 'dkjsfjjfkdv ndcvh dihfoishfjsgf db',),
('08', '7', '3', 'dcjdsjdfvgdivjd jh jxckhv dkjcvjkshdvd '),
('09', '7', '6', 'xvnd,fmmkxjcfksdjhfsfkjsd mhbcjsdgfs h f.sjv z/.lhvb'),
('010', '5', '4', 'vnxvkdk mhcdxjhfcd kjfvkjyfwa yr ws');


INSERT INTO friend_requests (initiator_user_id , target_user_id , status , requested_at , update_at )
VALUES
('11', '10', 'requested', '2005-12-27 10:07:22', '2005-12-27 10:07:22'),
('11', '10', 'declined', '2001-11-20 06:01:50', '2001-11-20 06:01:50'),
('11', '6', 'declined', '2006-05-16 23:13:21', '2006-05-16 23:13:21'),
('12', '6', 'unfriended', '1978-08-19 02:43:23', '1978-08-19 02:43:23'),
('9', '4', 'requested', '1971-10-13 12:30:13', '1971-10-13 12:30:13'),
('9', '099', 'requested', '2019-07-20 16:07:05', '2019-07-20 16:07:05'),
('9', '3', 'approved', '2000-12-19 05:52:26', '2000-12-19 05:52:26'),
('7', '3', 'requested', '2019-07-20 16:07:05', '2019-07-20 16:07:05'),
('7', '6', 'approved', '1993-01-17 10:48:49', '1993-01-17 10:48:49'),
('5', '4', 'requested', '2006-05-16 23:13:21', '2006-05-16 23:13:21');

INSERT INTO `media_types` (`id`, `name`) 
VALUES 
('1', 'voluptas'),
('2', 'qui'),
('3', 'porro'),
('4', 'voluptatem'),
('5', 'et'),
('6', 'ab'),
('7', 'qui'),
('8', 'accusamus'),
('9', 'natus'),
('10', 'soluta');

INSERT INTO `media` (`id`, `user_id`, `media_type_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `update_at`) 
VALUES 
('1', '1', '1', 'Et repellendus ut odio. Id delectus voluptate illo aut. Ducimus illo rem eum porro similique ut perspiciatis reprehenderit.', 'facere', 0, NULL, '2016-01-13 09:29:05', '1979-04-18 19:39:28'),
('2', '2', '2', 'Et sit laborum culpa incidunt exercitationem. Tempora deleniti dolorem quo a in et ut omnis. Et deserunt ipsam et iure.', 'quia', 101219, NULL, '2000-12-19 09:43:11', '2007-07-20 09:44:27'),
('3', '3', '3', 'Excepturi omnis id dolores eaque repellat. Aut sint nihil architecto. Quaerat aliquam quisquam rem enim consequatur.', 'fugit', 53689512, NULL, '2014-03-28 05:50:27', '1984-05-02 21:16:42'),
('4', '4', '4', 'Mollitia quaerat voluptas velit non tempora voluptate consequatur. Itaque maiores consectetur laboriosam. Fuga quo aliquam soluta natus ipsum autem saepe in. Quas officia qui nihil placeat et nobis.', 'quis', 0, NULL, '1974-04-20 12:00:07', '1973-04-11 20:20:02'),
('5', '5', '5', 'Enim et voluptatum error vitae quam adipisci. Non nisi ipsum laborum ullam aspernatur. Natus voluptate aut recusandae eos commodi amet eum. Qui et sed cum aliquam maiores sit maiores.', 'minima', 908524, NULL, '1979-12-17 12:40:44', '2009-01-27 19:42:35'),
('6', '6', '6', 'Voluptate quam ex qui necessitatibus in magnam quae. Dolorem sint pariatur perspiciatis harum labore facilis. Aut ut eum nam nam nobis. Magnam dolores error quae sed.', 'earum', 522601833, NULL, '1986-07-30 18:50:53', '1996-12-25 06:17:22'),
('7', '7', '7', 'Ut quaerat et sint nobis error. Dolor possimus et minima totam ea cupiditate modi.', 'veniam', 7842, NULL, '1991-07-29 01:52:09', '1986-04-12 08:32:37'),
('8', '8', '8', 'Ex tempora et eveniet dolorem. Aut alias praesentium quo aliquid dolorem laboriosam laborum suscipit. Et velit aut in et ab.', 'velit', 59, NULL, '1970-06-11 10:51:14', '1986-04-21 08:59:40'),
('9', '9', '9', 'Dolorem mollitia tempore eveniet et omnis vero repellendus. Qui nostrum consequuntur voluptatibus. Officiis tenetur debitis autem molestiae minus ex. Sunt deserunt eaque neque et nulla veritatis inventore. Ut voluptatem est ullam nostrum sit.', 'excepturi', 56890804, NULL, '1973-08-16 18:10:31', '1974-11-26 21:05:40'),
('10', '10', '10', 'Culpa dignissimos enim consequatur tempore ut. Recusandae in voluptas veniam et enim est. Quo dolores assumenda inventore sunt perspiciatis sed maiores.', 'in', 90, NULL, '2009-04-20 17:21:24', '2000-07-24 20:55:19');


INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) 
VALUES 
('1', '1', '1', '1980-11-16 11:23:34'),
('2', '2', '2', '2012-05-03 13:38:50'),
('3', '3', '3', '2010-02-06 21:39:35'),
('4', '4', '4', '1983-08-02 14:00:34'),
('5', '5', '5', '1997-03-24 22:58:16'),
('6', '6', '6', '2016-01-17 22:23:01'),
('7', '7', '7', '1996-08-31 22:22:58'),
('8', '8', '8', '1979-03-15 21:52:46'),
('9', '9', '9', '2005-05-26 00:59:26'),
('10', '10', '10', '1976-09-18 22:57:31');


INSERT INTO `news` (`id`, `user_id`, `media_id`, `created_at`, `status`) 
VALUES 
('1', '1', '1', '2019-05-18 08:32:49', 'read'),
('2', '2', '2', '1972-03-21 04:06:52', 'read'),
('3', '3', '3', '1989-04-01 14:00:18', 'donotread'),
('4', '4', '4', '1987-07-24 11:28:19', 'read'),
('5', '5', '5', '1979-04-28 13:16:12', 'read'),
('6', '6', '6', '2016-01-17 15:33:48', 'read'),
('7', '7', '7', '2020-03-18 02:29:04', 'read'),
('8', '8', '8', '1972-08-09 07:49:44', 'donotread'),
('9', '9', '9', '1987-08-04 21:28:13', 'donotread'),
('10', '10', '10', '1982-12-15 03:36:09', 'read');

INSERT INTO `favourites` (`id`, `user_id`, `media_id`, `created_at`, `status`) 
VALUES 
('1', '1', '1', '1975-07-09 18:19:39', 'donotsave'),
('2', '2', '2', '2019-10-21 05:00:13', 'save'),
('3', '3', '3', '1980-06-22 22:17:13', 'save'),
('4', '4', '4', '2000-09-27 20:55:59', 'donotsave'),
('5', '5', '5', '1996-10-02 03:33:54', 'save'),
('6', '6', '6', '1988-08-25 04:44:21', 'donotsave'),
('7', '7', '7', '1975-12-16 17:17:42', 'save'),
('8', '8', '8', '2015-12-31 11:34:25', 'save'),
('9', '9', '9', '2008-05-19 09:10:35', 'save'),
('10', '10', '10', '1971-09-06 14:57:08', 'save');

-- Задание 2
-- Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке
SELECT*
FROM users u 
GROUP BY firstname ; 

-- Задание 3
-- Написать скрипт, отмечающий несовершеннолетних пользователей как неактивных (поле is_active = false). Предварительно добавить такое поле в таблицу profiles со значением по умолчанию = true (или 1)
UPDATE profiles 
SET is_active = FALSE 
WHERE birthday > curdate(); 

-- Задание 4
-- Написать скрипт, удаляющий сообщения «из будущего» (дата больше сегодняшней)

DELETE created_at FROM messages m2 
WHERE DATE(date) <= CURDATE();

-- Задание 5
-- Написать название темы курсового проекта (в комментарии)
/* Не знаю, еще не думала. Что-то вроде онлайн магазина. Можно Wildberries попробовать */


 
 
