USE `ads_db`;

DROP TABLE IF EXISTS `ads`;
SET @saved_cs_client = @@character_set_client;
SET character_set_client = utf8mb4;
CREATE TABLE `ads`
(
    `id`    int            NOT NULL AUTO_INCREMENT,
    `title` char(100)      NOT NULL,
    `text`  text(1000)     NOT NULL,
    `price` decimal(20, 2) NOT NULL,
    `date`  timestamp  NOT NULL,
    PRIMARY KEY (`ID`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
SET character_set_client = @saved_cs_client;

set autocommit = 0;
INSERT INTO `ads` (title, text, price, date)
VALUES ('Заголовок 1', 'Текст текст текст текст текст текст', 14.22, '2000-12-30 13:20:30');
INSERT INTO `ads` (title, text, price, date)
VALUES ('Заголовок 2', 'Текст текст текст текст текст текст', 101.22, '2010-12-30 13:20:40');
INSERT INTO `ads` (title, text, price, date)
VALUES ('Заголовок 3', 'Текст текст текст текст текст текст', 120.22, '2001-12-30 13:20:50');
INSERT INTO `ads` (title, text, price, date)
VALUES ('Заголовок 4', 'Текст текст текст текст текст текст', 1060.22, '2000-12-30 13:20:50');
INSERT INTO `ads` (title, text, price, date)
VALUES ('Заголовок 5', 'Текст текст текст текст текст текст', 1001.22, '2005-12-30 13:20:30');
INSERT INTO `ads` (title, text, price, date)
VALUES ('Заголовок 6', 'Текст текст текст текст текст текст', 10.22, '2004-12-30 13:20:30');
INSERT INTO `ads` (title, text, price, date)
VALUES ('Заголовок 7', 'Текст текст текст текст текст текст', 15.22, '2008-12-30 13:20:30');
INSERT INTO `ads` (title, text, price, date)
VALUES ('Заголовок 8', 'Текст текст текст текст текст текст', 50.22, '2000-12-30 13:20:31');
INSERT INTO `ads` (title, text, price, date)
VALUES ('Заголовок 9', 'Текст текст текст текст текст текст', 70.22, '2009-12-30 13:20:30');
INSERT INTO `ads` (title, text, price, date)
VALUES ('Заголовок 10', 'Текст текст текст текст текст текст', 60.22, '2012-12-30 13:20:30');
INSERT INTO `ads` (title, text, price, date)
VALUES ('Заголовок 11', 'Текст текст текст текст текст текст', 222.22, '2011-12-30 13:20:30');
INSERT INTO `ads` (title, text, price, date)
VALUES ('Заголовок 12', 'Текст текст текст текст текст текст', 421.22, '2002-12-30 13:20:30');
INSERT INTO `ads` (title, text, price, date)
VALUES ('Заголовок 13', 'Текст текст текст текст текст текст', 230.22, '2001-12-30 13:20:30');
INSERT INTO `ads` (title, text, price, date)
VALUES ('Заголовок 14', 'Текст текст текст текст текст текст', 400.22, '2015-12-30 13:20:30');
INSERT INTO `ads` (title, text, price, date)
VALUES ('Заголовок 15', 'Текст текст текст текст текст текст', 300.22, '2020-12-30 13:20:30');
INSERT INTO `ads` (title, text, price, date)
VALUES ('Заголовок 16', 'Текст текст текст текст текст текст', 100.22, '1999-12-30 13:20:30');
commit;

SET @saved_cs_client = @@character_set_client;
SET character_set_client = utf8mb4;
CREATE TABLE `images`
(
    `ad_id`    int       NOT NULL,
    image_name char(255) NOT NULL,

    PRIMARY KEY (`ad_id`, image_name)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
SET character_set_client = @saved_cs_client;
