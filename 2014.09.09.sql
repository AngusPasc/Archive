
ALTER TABLE ��������_���������
ADD ����_���_���������  integer  NOT NULL
go



CREATE TABLE ���_���������
( 
	����_���_���������   integer IDENTITY ( 1,1 ) ,
	������������_���_��������� varchar(200)  NULL 
)
go



ALTER TABLE ���_���������
ADD CONSTRAINT XPK���_��������� PRIMARY KEY  CLUSTERED (����_���_��������� ASC)
go



ALTER TABLE ��������_���������
	ADD CONSTRAINT R_17 FOREIGN KEY (����_���_���������) REFERENCES ���_���������(����_���_���������)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go


