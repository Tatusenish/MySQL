INSERT INTO products(`id`, `name`, `description`, `image`, `price`, `shipping`, `in_stock`, `manufacturer_id`, `seller_id`, `user_id`)
VALUES
('25','phone',',nfvkdsfhjof edfdjfosdhgoegjed gdjgdk','nfghf','1000','4',TRUE,'32','24','55465' )
('28','mouse','bcbhlkfhkf;khbf;khbfjkbfmblkfbf jhgjghv','gdg','250','2',TRUE,'5464','63','4527' )
('2','T-shirt','hydrnbb utyu ikuykyuk yi','dgdrtg','32546',FALSE,'3','463','4524','52475' )
('65','ball','tyj juyiu imyuik yi','gtrg',TRUE,'4651','42','4321', '25654','257' )
('54','toy','kjfgoirutgfel gtue eogjd gj', 'hrfthgrft','63556','54',TRUE,'343','7475','25' )
('36','stuff','etgld;kgb;fdbg,f.mbnklfjh lgjkrdlgj n','hfg','6566','85',TRUE,'1021','25463','7425' )
('954','cleaner','gkdf;lkg;fdkgb;f b flgbp;fkgh pdjhg','htht','5655','22',TRUE,'243','27463','752' )
('695','lipstick','gkdpog pdkgdigkprdig prjhhgfhgf', 'jmhtf','52544',FALSE,'77','21312','436453','752' )
('456','lighter','gkdgkdpojgldf gjhfgh fhfghf', 'gjf','59969',TRUE,'57','3123','2345','274' )
('584','ring','dg;l dkgjrgjkf ghojh4110','ghfhggj',TRUE,'3','212','4536453','5436' )


INSERT INTO manufacturers(`product_id`, `name`, `description`, `logo`, `site`)
VALUES
('634863','kfgjktfihj','rfhjgtjmhb gntgjhsr','mngh','jntyhrytgrthy')
('546','gfhfgjhgb','nhfxhg jjyhjyj','hgmghmnhg','htyjyhkm')
('65','dhfh','hfhtghtgjhgtj','mhjmh','mhjmyh')
('6556','ghfjuk,','gfnhnm mnjhgjmtgh jtghj','mhmh','mgyjmhm,')
('65786','nghjk','mnjgfjtgm gjgjgtjtjtgj','mhjm','myuujty')
('122','nmhm','jtkj k kjyjyj','mhg','jtuhyjkyu')
('1235','gzshgth sb','jtg tuyt jkyjkymk','yj','hgmhjm')
('2477','gsthytu','hrylktrtyrng hytju','jtj','dtgfyht')
('323','hfgj','yhu;rkyhprtyhr ijohyrtjyh','jyt','rtyrw')
('543','hrydujy','fdgkperutyr4uyr4y','jyj','ryhryht')

INSERT INTO sellers(`id`, `product_id`, `name`)
VALUES
('36551','6454','gfhrdtyhrt')
('659','1757','yjhtyu')
('9874','15','tyjgn')
('541','3658','etrfgrhg')
('5978','074524','htr')
('5487','5607','jtrjk')
('874','87606','fghr5')
('547','02453','tyjt')
('96787','546787','j56u')
('877','8578','jyti')


INSERT INTO product_properties(`id`,`product_id`,`model`,`size`,`price`,`quantity`)
VALUES
('8753','5435','hgdsrg','M','7857865','2')
('5354','537','shtr','M','46578','15')
('354','38','ethr','S','637867','22')
('437','38','dhgr','46F','67878','5347')
('7857','3458','thr','L','678','41')
('876','4786','hrfgh','XXL','637','752')
('678','876578','djfjt','36','67869','574')
('786','546','tjtr','46','78678','543')
('75','34','jtry','25','65434','354')
('686','487','kultu','154','785754','345')


INSERT INTO product_images(`id`, `product_id`, `image`, `title`)
VALUES
('877','786','bdfh','yroiy')
('6487863','35463','hdhg','ytiyui')
('587','457','fgh','kuyitiu')
('4633','54245','gshd','kgfutu')
('34536','42','jyhsdj','ytuiyi')
('354','5678','jd','ijtruyt')
('4638','21','rwjuytujuyu','ghdjt')
('3453','475','fshyry','gkyu')
('34','23','jhrsd','kfyu')
('34','546','hkgyuk','yoiyiouyo')


INSERT INTO product_orders(`id`, `product_id`, `created_at`, `price`)
VALUES
('74687','786','2005-12-27 10:07:22','7865786')
('567865','574587','2005-12-27 10:07:22','546345')
('347','6778','2005-12-27 10:07:22','54634')
('34578','6787','2005-12-27 10:07:22','4785787')
('324567','4564','2005-12-27 10:07:22','5464')
('374','156','2005-12-27 10:07:22','787')
('32541','345365','2005-12-27 10:07:22','54634')
('786','364756','2005-12-27 10:07:22','456')
('4563','54645','2005-12-27 10:07:22','786987')
('876','4564','2005-12-27 10:07:22','74678')


INSERT INTO users(`id`, `firstname`, `lastname`, `email`, `phone`)
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


INSERT INTO `favourites` (`id`, `user_id`, `product_id`, `created_at`, `status`) 
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


INSERT INTO pay(`id`, `user_id`, `open_at`, `close_at`, `status`, `sum`)
VALUES
('87856','657','2019-10-21 05:00:13',NULL,'open','7897896')
('678','547','2019-10-21 05:00:13','2020-01-30 16:23:48','close','4867')
('678','78','2019-10-21 05:00:13',NULL,'open','867')
('6786557','6674','2019-10-21 05:00:13',NULL,'open','678')
('454','786','2019-10-21 05:00:13',NULL,'open','867')
('4568','145','2019-10-21 05:00:13','2020-01-30 16:23:48','close','78967')
('475','546','2019-10-21 05:00:13',NULL,'open','678')
('124','464','2019-10-21 05:00:13',NULL,'open','8767')
('778','645','2019-10-21 05:00:13',NULL,'open','687')
('674','86','2019-10-21 05:00:13','2020-01-30 16:23:48','close','867786')


INSERT INTO payment(`id`,`pay_id`, `user_id`, `sum`)
VALUES 
('45','8657','786','7578')
('24','8767','786','534547')
('2586','87','4767','7578676')
('2465','454','7867','5647567')
('34365','145','78657','463')
('543','453','57','54654')
('435','5463','4563','6789')
('786','4321','3748','4646')
('567','54','786','468')
('3674','4537','68','46978')