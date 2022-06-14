#날짜: 2022/06/14
#이름: 조귀애
#내용: 데이터베이스 관리

DROP DATABASE `testdb`;

#실습하기 3-1
CREATE DATABASE `testDB`;

CREATE USER 'tester'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON testdb.* TO 'tester'@'%';
FLUSH PRIVILEGES;

#실습하기 3-2
SET PASSWORD FOR 'tester'@'%'=PASSWORD('1q2w3e'); #비밀번호 수정

DROP USER 'tester'@'%'; #계정 삭제