/*����*/
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

/*����*/
CREATE TABLE �ͷ����
(
��� CHAR(10) primary key,
�������� char(10) NOT NULL,
�۸� int NOT NULL,
)

CREATE TABLE �ͷ���Ϣ
(
������ CHAR(10) primary key,
���ͱ�� char(10) 
foreign key(���ͱ��) references �ͷ����(���) NOT NULL,
¥����Ϣ char(10) NOT NULL,
������ INT NOT NULL,
��ס״̬ CHAR(10) NOT NULL
)
CREATE TABLE �ͻ���Ϣ
(
���֤�� CHAR(20) PRIMARY KEY,
���� char(10) NOT NULL,
�Ա� CHAR(10) NOT NULL,
���� INT NOT NULL,
�绰 CHAR(11) NOT NULL,
)
CREATE TABLE ������Ϣ
(
������ CHAR(10) PRIMARY KEY,
���֤�� CHAR(20) NOT NULL,
����ʱ�� CHAR(10) NOT NULL,
�뿪ʱ�� CHAR(10) NOT NULL,
��ס���� INT NOT NULL
)
CREATE TABLE ��ס��Ϣ
(
������ CHAR(10) NOT NULL,
���֤�� CHAR(20) NOT NULL,
����ʱ�� CHAR(10) NOT NULL,
�뿪ʱ�� CHAR(10) NOT NULL,
��ס���� INT NOT NULL,
��ͷ��� CHAR(10) NOT NULL,
���˽�� INT NOT NULL
)
/*������Ϣ*/
INSERT INTO �ͷ����(���,��������,�۸�) VALUES('001','�󴲷�',100)
INSERT INTO �ͷ����(���,��������,�۸�) VALUES('002','��׼��',200)
INSERT INTO �ͷ����(���,��������,�۸�) VALUES('003','��ͥ��',300)
INSERT INTO �ͷ����(���,��������,�۸�) VALUES('004','�߼��׷�',400)
INSERT INTO �ͷ����(���,��������,�۸�) VALUES('006','�ؼ۷�',99)

INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('101','001','1',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('102','001','1',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('103','001','1',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('104','001','1',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('105','001','1',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('106','001','1',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('107','001','1',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('108','001','1',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('109','001','1',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('110','001','1',1,' ')

INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('201','002','2',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('202','002','2',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('203','002','1',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('204','002','2',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('205','002','2',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('206','002','2',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('207','002','2',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('208','002','2',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('209','002','2',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('210','002','2',1,' ')

INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('301','003','3',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('302','003','3',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('303','003','3',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('304','003','3',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('305','003','3',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('306','004','3',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('307','004','3',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('308','004','3',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('309','004','3',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('310','004','3',1,' ')

INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('401','006','1',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('402','006','1',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('403','006','1',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('404','006','1',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('405','006','1',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('406','006','2',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('407','006','2',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('408','006','2',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('409','006','2',1,' ')
INSERT INTO �ͷ���Ϣ(������,���ͱ��,¥����Ϣ,������,��ס״̬) VALUES('410','006','2',1,' ')

/*������ס�洢����*/
CREATE PROC GETRUZHU
AS
SELECT * FROM ��ס��Ϣ;
/*�����洢����*/
CREATE PROC GETYUDING
AS
SELECT * FROM ������Ϣ;

/*ɾ������������*/
CREATE TRIGGER DE_ROOM
ON ������Ϣ
AFTER DELETE
AS
DECLARE @IDCARD CHAR(20)
SELECT @IDCARD=DELETED.���֤�� FROM DELETED
DELETE FROM �ͻ���Ϣ 
WHERE
�ͻ���Ϣ.���֤��=@IDCARD

/*��������ס*/
CREATE TRIGGER ROOMDONE
ON ��ס��Ϣ
AFTER DELETE
AS
DECLARE @IDCARD CHAR(20)
SELECT @IDCARD=DELETED.���֤�� FROM DELETED
DELETE FROM �ͻ���Ϣ 
WHERE
�ͻ���Ϣ.���֤��=@IDCARD