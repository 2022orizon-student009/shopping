\c sample
DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS ordered;
DROP TABLE IF EXISTS ordered_detail;

CREATE TABLE item
(
  code SERIAL PRIMARY KEY,
  category_code INTEGER,
  name TEXT,
  price INTEGER,
  image TEXT
);
CREATE TABLE category
(
  code SERIAL PRIMARY KEY,
  name TEXT
);
CREATE TABLE customer
(
  code SERIAL PRIMARY KEY,
  name TEXT,
  address TEXT,
  tel TEXT,
  email TEXT
);
CREATE TABLE ordered
(
  code SERIAL PRIMARY KEY,
  customer_code INTEGER,
  ordered_date DATE,
  total_price INTEGER
);
CREATE TABLE ordered_detail
(
  ordered_code INTEGER,
  item_code INTEGER,
  num INTEGER
); 

INSERT INTO category(name) VALUES('�{');
INSERT INTO category(name) VALUES('DVD');
INSERT INTO category(name) VALUES('�Q�[��');

INSERT INTO item(category_code, name, price, image) VALUES(1, 'Java�̊�{', 2500, '4854.png');
INSERT INTO item(category_code, name, price, image) VALUES(1, 'MLB Fun', 980, '16642.png');
INSERT INTO item(category_code, name, price, image) VALUES(1, '����BOOK!', 1200, '16112.png');
INSERT INTO item(category_code, name, price, image) VALUES(1, '1�ԑ�؂ȕ�A��', 1100,'6211.png'); 
INSERT INTO item(category_code, name, price, image) VALUES(1, '�V�l�G���W�j�A�̐S��', 1750,'12311.png'); 


INSERT INTO item(category_code, name, price, image) VALUES(2, '�Ȃ����̃A�j���V���[�Y', 2000, '10726.png');
INSERT INTO item(category_code, name, price, image) VALUES(2, 'The Racer', 1000, '1895.png');
INSERT INTO item(category_code, name, price, image) VALUES(2, 'Space Wars 3', 1800, '1896.png');
INSERT INTO item(category_code, name, price,image) VALUES(2, 'Try and Error', 1900,'17351.png'); 
INSERT INTO item(category_code, name, price,image) VALUES(2, 'Hoge�̕���', 2000,'12348.png'); 

INSERT INTO item(category_code, name, price, image) VALUES(3, '�p�Y���Q�[��', 780, '11650.png');
INSERT INTO item(category_code, name, price, image) VALUES(3, 'Invader Fighter', 3400, '11685.png');
INSERT INTO item(category_code, name, price, image) VALUES(3, 'Play the BascketBall', 2200, '11687.png');
INSERT INTO item(category_code, name, price,image) VALUES(3, '100�}�X�v�Z', 2800,'10353.png'); 
INSERT INTO item(category_code, name, price,image) VALUES(3, 'WildHoge2', 2500,'17604.png'); 

ALTER TABLE item OWNER TO student;  
ALTER TABLE category OWNER TO student;
ALTER TABLE customer OWNER TO student;
ALTER TABLE ordered OWNER TO student;
ALTER TABLE ordered_detail OWNER TO student;
