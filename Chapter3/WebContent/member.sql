CREATE TABLE member (
	PHONE CHAR(14) NOT NULL PRIMARY KEY, 
	IRUM  VARCHAR2(20) NOT NULL,
        SIDO VARCHAR2(10) NOT NULL,
	GUGUN VARCHAR2(20) NOT NULL,
	DONG VARCHAR2(100) NOT NULL,
	BUNJI VARCHAR2(17) NULL,
	ZIPCODE CHAR(7) NOT NULL
);

INSERT INTO MEMBER values ('02-123-4567', '홍길동', '서울', '강남구', '개포1동 경남아파트', '', '135-806');
INSERT INTO MEMBER values ('02-345-7777', '조성모', '서울', '영등포구', '대림3동', '718∼774', '150-815');
INSERT INTO MEMBER values ('02-974-4567', '이미자', '서울', '성동구', '옥수동', '', '133-100');
INSERT INTO MEMBER values ('02-3482-6777', '이영애', '서울', '강남구', '개포1동 경남아파트', '', '135-806');
INSERT INTO MEMBER values ('02-203-4444', '박찬호', '서울', '동대문구', '휘경2동', '', '130-092');
INSERT INTO MEMBER values ('02-888-5555', '선동열', '서울', '노원구', '중계1동 신안아파트', '', '139-922');
INSERT INTO MEMBER values ('02-244-2424', '한지민', '서울', '동작구', '노량진1동', '13∼112', '156-800');
INSERT INTO MEMBER values ('02-111-1111', '공유', '서울', '구로구', '오류1동 동부골든아파트', '', '152-783');
INSERT INTO MEMBER values ('02-222-2222', '윤은혜', '서울', '광진구', '군자동', '345∼374', '143-840');
INSERT INTO MEMBER values ('02-333-3333', '나훈아', '서울', '강동구', '천호3동', '', '134-023');