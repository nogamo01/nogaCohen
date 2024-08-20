CREATE DATABASE NogaProject
go
use NogaProject
go


create table PTMedications1  
(
PTID INT constraint pk_PTMedications1 primary key (ptID), 
MedID INT not null , 
MedName nvarchar (50),
MedDose int 
)

Create Table PTSs1
(
PtID INT,
CategoryID INT,
CONSTRAINT PK_PTSs1 PRIMARY KEY (CategoryID),
constraint fk_PTSs1 foreign key (PtID) references PTMedications1 (PtID), 
PTFirstNsme varchar (12),
PTLastName varchar (12),
PTAddress varchar (50), 
 )

 
 Create TABLE MedisinD4   
 (
 Typed varchar (20) CONSTRAINT PK_MedisinD4 PRIMARY KEY (Typed) ,
 PtID INT constraint FK_MedisinD4 foreign key (Ptid) references PTMedications1 (Ptid),
 MedID INT,
 MedName varchar (20),
 )


 create table CategoryDE 
 (
 CategoryID int constraint pk_CategoryDE PRIMARY KEY (CategoryID),
 CategoryDesc VARCHAR (50), 
 ProtocolID VARCHAR (50),
 CategoryName varchar (20)
 )

 Create Table SiteDE4
 (
 SiteID INT,   
 siteName varchar (15), 
 siteAddress Varchar (50), 
 ContactPerson varchar (20), 
 CategoryID INT, 
 Typed Varchar (20),
 constraint fk_SiteDE4_C Foreign key (CategoryID) references CategoryDE (CategoryID),
 constraint FK_SiteDE4_T foreign key (Typed) references MedisinD4 (Typed),
  )

 CREATE TABLE Studeis1  
 (
 ProtocolID VARCHAR (50)constraint pk_Studeis1 primary key (ProtocolID),
 CategoryID int, 
 constraint fk_Studeis1 Foreign Key (CategoryID) REFERENCES CategoryDE (CategoryID),
 )

INSERT INTO PTMedications1  VALUES  (1, 111, 'levadopa', 100)
INSERT INTO PTMedications1  VALUES (2, 112, 'Dopanin', 120) 
INSERT INTO PTMedications1  VALUES  (3, 113, 'Optalgin', 130)
INSERT INTO PTMedications1  VALUES (4, 114, 'levadopa', 100) 
INSERT INTO PTMedications1  VALUES(5, 115, 'Akamol', 100)
INSERT INTO PTMedications1  VALUES(6, 116, 'levadopa', 100)
 
select * from PTMedications1

INSERT INTO PTSs1 VALUES (1, 335, 'Yovl', 'Cohen', 'Haifa, Givon 5')
INSERT INTO PTSs1 VALUES (2, 424, 'Ofek', 'Aharon', 'Haifa, Yona 12')
INSERT INTO PTSs1 VALUES (3, 333, 'Sharon', 'Yazdi', 'Haifa, Vered 13')
INSERT INTO PTSs1 VALUES (4, 323, 'Dana', 'SHriver', 'Haifa, Shahf 10')
INSERT INTO PTSs1 VALUES (5, 444, 'Rinat', 'Diana', 'Haifa, Yotam 10')
INSERT INTO PTSs1 VALUES (6, 123, 'Yona', 'Zivan', 'Haifa, Vardia 12')

select * from PTSs1

INSERT INTO MedisinD4 VALUES ('Research1',1, 335, 'levadopa')
INSERT INTO MedisinD4 VALUES ('Research2',2, 424, 'Dopanin')
INSERT INTO MedisinD4 VALUES ('Research3',3,333, 'Optalgin')
INSERT INTO MedisinD4 VALUES ('Research4',4, 323, 'levadopa') 
INSERT INTO MedisinD4 VALUES ('Research5',5,444, 'Akamol')
INSERT INTO MedisinD4 VALUES ('Research6',6,123,  'Levadopa')


select * from MedisinD4

INSERT INTO CategoryDE VALUES (102, 'Essential tremor', 'ET002', 'BRAIN')
INSERT INTO CategoryDE VALUES (103, ' Brain tremor', 'BT002', 'BRAIN')
INSERT INTO CategoryDE VALUES (104, 'Essential tremor', 'ET001', 'BRAIN')
INSERT INTO CategoryDE VALUES (105, 'Bons Tumers', 'BN001', 'Bons')
INSERT INTO CategoryDE VALUES (106, 'orthopedic problems', 'OR001', 'Orthopedics')
INSERT INTO CategoryDE VALUES (107, 'Heart problems', 'CP001', 'Cardio')

select * from CategoryDE

INSERT INTO SiteDE4 VALUES (303, 'Rambam', 'Haifa, haliya 8', 'Prof.Ben David',102,'Research1')
INSERT INTO SiteDE4 VALUES (602, 'Shiba', 'Tel Aviv, Shiba Roud 7', 'Prof.Eran Yaniv',103,'Research2')
INSERT INTO SiteDE4 VALUES (401, 'Carmel', 'Haifa, Michal 7', 'Prof.Idan Cohen',104,'Research3')
INSERT INTO SiteDE4 VALUES (454, 'Hadasa', 'Jerujalem, kalman 16', 'Prof Yuval Ofri',105,'Research4')
INSERT INTO SiteDE4 VALUES (555, 'Elisa', 'Haifa, haliya 8', 'Prof Rona Gonen',106,'Research5')
INSERT INTO SiteDE4 VALUES (987, 'Haglil', 'Nahariya, Vered 5', 'Prof Donna Roni',107,'Research6')

select * from SiteDE4

Insert into Studeis1 values ('ET002', 102)
Insert into Studeis1 values ('BT002', 103)
Insert into Studeis1 values ('ET001', 104)
Insert into Studeis1 values ('BN001', 105)	
Insert into Studeis1 values ('OR001', 106)
Insert into Studeis1 values ('CP001', 107)

select * from Studeis1


