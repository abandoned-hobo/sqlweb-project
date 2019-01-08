/*建库*/
CREATE DATABASE test
ON
( NAME = SK_Data,
FILENAME = 'D:\test_Data.MDF',
SIZE = 3,
FILEGROWTH = 10%
)
LOG ON
( NAME = SK_Log,
FILENAME = 'D:\ test_Log.LDF',
SIZE = 5,
FILEGROWTH = 10%     )

/*建表*/
CREATE TABLE 客房类别
(
编号 CHAR(10) primary key,
类型名称 char(10) NOT NULL,
价格 int NOT NULL,
)

CREATE TABLE 客房信息
(
房间编号 CHAR(10) primary key,
类型编号 char(10) 
foreign key(类型编号) references 客房类别(编号) NOT NULL,
楼层信息 char(10) NOT NULL,
床数量 INT NOT NULL,
入住状态 CHAR(10) NOT NULL
)
CREATE TABLE 客户信息
(
身份证号 CHAR(20) PRIMARY KEY,
姓名 char(10) NOT NULL,
性别 CHAR(10) NOT NULL,
年龄 INT NOT NULL,
电话 CHAR(11) NOT NULL,
)
CREATE TABLE 订房信息
(
房间编号 CHAR(10) PRIMARY KEY,
身份证号 CHAR(20) NOT NULL,
到达时间 CHAR(10) NOT NULL,
离开时间 CHAR(10) NOT NULL,
入住人数 INT NOT NULL
)
CREATE TABLE 入住信息
(
房间编号 CHAR(10) NOT NULL,
身份证号 CHAR(20) NOT NULL,
到达时间 CHAR(10) NOT NULL,
离开时间 CHAR(10) NOT NULL,
入住人数 INT NOT NULL,
早餐服务 CHAR(10) NOT NULL,
结账金额 INT NOT NULL
)
/*插入信息*/
INSERT INTO 客房类别(编号,房间类型,价格) VALUES('001','大床房',100)
INSERT INTO 客房类别(编号,房间类型,价格) VALUES('002','标准间',200)
INSERT INTO 客房类别(编号,房间类型,价格) VALUES('003','家庭房',300)
INSERT INTO 客房类别(编号,房间类型,价格) VALUES('004','高级套房',400)
INSERT INTO 客房类别(编号,房间类型,价格) VALUES('006','特价房',99)

INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('101','001','1',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('102','001','1',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('103','001','1',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('104','001','1',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('105','001','1',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('106','001','1',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('107','001','1',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('108','001','1',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('109','001','1',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('110','001','1',1,' ')

INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('201','002','2',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('202','002','2',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('203','002','1',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('204','002','2',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('205','002','2',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('206','002','2',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('207','002','2',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('208','002','2',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('209','002','2',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('210','002','2',1,' ')

INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('301','003','3',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('302','003','3',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('303','003','3',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('304','003','3',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('305','003','3',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('306','004','3',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('307','004','3',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('308','004','3',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('309','004','3',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('310','004','3',1,' ')

INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('401','006','1',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('402','006','1',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('403','006','1',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('404','006','1',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('405','006','1',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('406','006','2',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('407','006','2',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('408','006','2',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('409','006','2',1,' ')
INSERT INTO 客房信息(房间编号,类型编号,楼层信息,床数量,入住状态) VALUES('410','006','2',1,' ')

/*查找入住存储过程*/
CREATE PROC GETRUZHU
AS
SELECT * FROM 入住信息;
/*订房存储过程*/
CREATE PROC GETYUDING
AS
SELECT * FROM 订房信息;

/*删除订房触发器*/
CREATE TRIGGER DE_ROOM
ON 订房信息
AFTER DELETE
AS
DECLARE @IDCARD CHAR(20)
SELECT @IDCARD=DELETED.身份证号 FROM DELETED
DELETE FROM 客户信息 
WHERE
客户信息.身份证号=@IDCARD

/*触发器入住*/
CREATE TRIGGER ROOMDONE
ON 入住信息
AFTER DELETE
AS
DECLARE @IDCARD CHAR(20)
SELECT @IDCARD=DELETED.身份证号 FROM DELETED
DELETE FROM 客户信息 
WHERE
客户信息.身份证号=@IDCARD