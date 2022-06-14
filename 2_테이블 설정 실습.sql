#날짜: 2022/06/14
#이름 : 조귀애
#내용 : 테이블 설정 실습

#실습하기 2-1
CREATE TABLE `User2` (
   `uid`    VARCHAR(10) PRIMARY KEY,
   `name`   VARCHAR(10),
   `hp`     CHAR(13),
   `age`    TINYINT
 );

INSERT INTO `User2` VALUES ('a101', '김유신', '010-1234-1111', 25);
INSERT INTO `User2` VALUES ('a102', '김춘추', '010-1234-2222', 23);
INSERT INTO `User2` VALUES ('a103', '장보고', '010-1234-3333', 34);
INSERT INTO `User2` VALUES ('a104', '강감찬', '010-1234-4444', 45);
INSERT INTO `User2` VALUES ('a105', '이순신', '010-1234-5555', 51);
INSERT INTO `User2` VALUES ('a106', '정약용', '010-1234-3333', 42);

#실습하기 2-2
CREATE TABLE `User3` (
   `uid`    VARCHAR(10) PRIMARY KEY,
   `name`   VARCHAR(10),
   `hp`     CHAR(13) UNIQUE,
   `age`    TINYINT
 );

#실습하기 2-3
CREATE TABLE `Parent` (
   `uid`    VARCHAR(10) PRIMARY KEY,
   `name`   VARCHAR(10),
   `hp`     CHAR(13) UNIQUE
   );

INSERT INTO `Parent` VALUES ('p101', '김유신', '010-1234-1001');
INSERT INTO `Parent` VALUES ('p102', '장보고', '010-1234-1002');
INSERT INTO `Parent` VALUES ('p103', '이순신', '010-1234-1003');

CREATE TABLE `User4` (
   `uid`   VARCHAR(10) PRIMARY KEY,
   `name`  VARCHAR(10),
   `hp`    CHAR(13) UNIQUE,
   `pid`   VARCHAR(10),
   FOREIGN KEY (`pid`) REFERENCES `Parent` (`uid`)
 );

INSERT INTO `User4` VALUES ('c101', '김철수', '010-1234-1111', 'p101');
INSERT INTO `User4` VALUES ('c102', '장철수', '010-1234-2222', 'p102');
INSERT INTO `User4` VALUES ('c103', '이철수', '010-1234-3333', 'p103');
INSERT INTO `User4` VALUES ('c104', '김영희', '010-1234-4444', 'p103');  >부모데이터에 해당하는 것만 가능해서 안됨. uid값을 바꾸자.

#실습하기 2-4
CREATE TABLE `User5` (
   `seq`      INT AUTO_INCREMENT PRIMARY KEY,
   `name`     VARCHAR(10),
   `gender`   TINYINT,
   `age`      INT,
   `addr`     VARCHAR(255)
);

INSERT INTO `User5` (`name`, `gender`, `age`, `addr`) VALUES ('김유신',    1, 25, '김해시');
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`) VALUES ('김춘추',    1, 25, '경주시');
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`) VALUES ('선덕여왕', 2, 35, '경주시');
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`) VALUES ('장보고',    1, 31, '완도시');
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`) VALUES ('신사임당', 2, 42, '강릉시');
INSERT INTO `User5` (`name`, `gender`, `age`, `addr`) VALUES ('허난설헌', 2, 27, '광주시');
INSERT INTO `User5` (`gender`, `addr`) VALUES (1, '서울시');   #Null값이 들어오면
INSERT INTO `User5` (`gender`, `addr`) VALUES (1, '부산시');   #쓰레기 데이터

#실습하기 2-5
CREATE TABLE `User6` (
   `seq`      INT AUTO_INCREMENT PRIMARY KEY,
   `name`     VARCHAR(10) NOT NULL,
   `gender`   TINYINT,
   `age`      INT DEFAULT 1,
   `addr`     VARCHAR(255)
);

INSERT INTO `User6` (`name`, `gender`, `age`, `addr`) VALUES ('김유신',    1, 25, '김해시');
INSERT INTO `User6` (`name`, `gender`, `age`, `addr`) VALUES ('김춘추',    1, 25, '경주시');
INSERT INTO `User6` (`name`, `gender`, `age`, `addr`) VALUES ('선덕여왕',  2, 35, '경주시');
INSERT INTO `User6` (`name`, `gender`, `age`, `addr`) VALUES ('장보고',    1, 31, '완도시');
INSERT INTO `User6` (`name`, `gender`, `age`, `addr`) VALUES ('신사임당',  2, 42, '강릉시');
INSERT INTO `User6` (`name`, `gender`, `age`, `addr`) VALUES ('허난설헌',  2, 27, '광주시');
INSERT INTO `User6` (`gender`, `addr`) VALUES (1, '서울시');                       #쓰레기 데이터 insert 안되게 함
INSERT INTO `User6` (`name`, `gender`, `addr`) VALUES ('이순신', 1, '부산시');   #이름값 있으면 나이는 1로 출력됨.

#실습하기 2-6
CREATE TABLE `User7` LIKE `User6`;

#실습하기 2-7
INSERT INTO `User7` SELECT * FROM `User6`;