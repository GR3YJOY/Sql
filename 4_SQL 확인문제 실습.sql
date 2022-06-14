#날짜: 2022/06/14
#이름: 조귀애
#내용: SQL 확인문제 실습하기

#실습하기 4-1
CREATE TABLE `tb1_member` (
   `memberID`     VARCHAR(10) PRIMARY KEY,
   `memberName`   VARCHAR(10) NOT NULL,
   `memberHp`     CHAR(13) UNIQUE,
   `memberAge`    INT,
   `memberAddr`   VARCHAR(20)
);

CREATE TABLE `tb1_product` (
   `productCode`   INT AUTO_INCREMENT PRIMARY KEY,
   `productName`   VARCHAR(10) NOT NULL,
   `price`         INT NOT NULL,
   `amount`        INT DEFAULT 0,
   `company`       VARCHAR(10),
   `makeDate`      DATE
);

#실습하기 4-2
INSERT INTO `tb1_member` VALUES ('p101', '김유신', '010-1234-1001', 25, '신라');
INSERT INTO `tb1_member` VALUES ('p102', '김춘추', '010-1234-1002', 23, '신라');
INSERT INTO `tb1_member` (`memberID`, `memberName`, `memberAge`, `memberAddr`) VALUES ('p103', '장보고', 31, '통일신라');
INSERT INTO `tb1_member` (`memberID`, `memberName`, `memberAddr`) VALUES ('p104', '강감찬', '고려');
INSERT INTO `tb1_member` (`memberID`, `memberName`, `memberHp`, `memberAge`) VALUES ('p105', '이순신', '010-1234-1005', 50);

INSERT INTO `tb1_product` VALUES (1, '냉장고',  800,  10,   'LG', '2022-01-06');
INSERT INTO `tb1_product` VALUES (2, '노트북', 1200,  20, '삼성', '2022-01-06');
INSERT INTO `tb1_product` VALUES (3, 'TV',     1400,   6,   'LG', '2022-01-06');
INSERT INTO `tb1_product` VALUES (4, '세탁기', 1000,   8,   'LG', '2022-01-06');
INSERT INTO `tb1_product` (`productCode`, `productName`, `price`) VALUES (5, '컴퓨터', 1100);
INSERT INTO `tb1_product` VALUES (6, '휴대폰',  900, 102, '삼성', '2022-01-06');

#실습하기 4-3
SELECT `memberName` FROM `tb1_member`;
SELECT `memberName`, `memberHp` FROM `tb1_member`;
SELECT * FROM `tb1_member` WHERE `memberID`='p102';
SELECT * FROM `tb1_member` WHERE `memberID`='p104' OR `memberID`='p105';
SELECT * FROM `tb1_member` WHERE `memberAddr`='신라';
SELECT * FROM `tb1_member` WHERE `memberAge` > 30;
SELECT * FROM `tb1_member` WHERE `memberHp` IS NULL;
UPDATE `tb1_member` SET `memberAge`=42 WHERE `memberID`='p104';
UPDATE `tb1_member` SET `memberAddr`='조선' WHERE `memberID`='p105';
DELETE FROM `tb1_member` WHERE `memberID`='p103';
SELECT * FROM `tb1_member`;

SELECT `productName` FROM `tb1_product`;
SELECT `productName`, `price` FROM `tb1_product`;
SELECT * FROM `tb1_product` WHERE `company`='LG';
SELECT * FROM `tb1_product` WHERE `company`='삼성';
UPDATE `tb1_product` SET
                       `company`='삼성',
                       `makeDate`='2021-01-01'
                     WHERE
							  `productCode`=5;

SELECT * FROM `tb1_product`;							   



