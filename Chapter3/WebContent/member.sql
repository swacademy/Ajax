CREATE TABLE member (
	PHONE CHAR(14) NOT NULL PRIMARY KEY, 
	IRUM  VARCHAR2(20) NOT NULL,
        SIDO VARCHAR2(10) NOT NULL,
	GUGUN VARCHAR2(20) NOT NULL,
	DONG VARCHAR2(100) NOT NULL,
	BUNJI VARCHAR2(17) NULL,
	ZIPCODE CHAR(7) NOT NULL
);

INSERT INTO MEMBER values ('02-123-4567', 'ȫ�浿', '����', '������', '����1�� �泲����Ʈ', '', '135-806');
INSERT INTO MEMBER values ('02-345-7777', '������', '����', '��������', '�븲3��', '718��774', '150-815');
INSERT INTO MEMBER values ('02-974-4567', '�̹���', '����', '������', '������', '', '133-100');
INSERT INTO MEMBER values ('02-3482-6777', '�̿���', '����', '������', '����1�� �泲����Ʈ', '', '135-806');
INSERT INTO MEMBER values ('02-203-4444', '����ȣ', '����', '���빮��', '�ְ�2��', '', '130-092');
INSERT INTO MEMBER values ('02-888-5555', '������', '����', '�����', '�߰�1�� �žȾ���Ʈ', '', '139-922');
INSERT INTO MEMBER values ('02-244-2424', '������', '����', '���۱�', '�뷮��1��', '13��112', '156-800');
INSERT INTO MEMBER values ('02-111-1111', '����', '����', '���α�', '����1�� ���ΰ�����Ʈ', '', '152-783');
INSERT INTO MEMBER values ('02-222-2222', '������', '����', '������', '���ڵ�', '345��374', '143-840');
INSERT INTO MEMBER values ('02-333-3333', '���ƾ�', '����', '������', 'õȣ3��', '', '134-023');