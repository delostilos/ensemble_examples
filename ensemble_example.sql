CREATE TABLE Department
( DepName VARCHAR (255) NOT NULL
, Budget  DECIMAL (12,2)
)
;

ALTER TABLE Department ADD CONSTRAINT Department_PK PRIMARY KEY ( DepName )
;

CREATE TABLE Employee
( EmpName      VARCHAR (255) NOT NULL
, Gender       CHAR (1)
, DepName      VARCHAR (255) NOT NULL
, Job          VARCHAR (255)
, HoursPerWeek SMALLINT
, Manager      VARCHAR (255)
)
;

ALTER TABLE Employee
ADD CONSTRAINT Employee_PK
PRIMARY KEY ( EmpName )
;

CREATE TABLE Interest
( EmpName  VARCHAR (255) NOT NULL
, ProdName VARCHAR (255) NOT NULL
, Degree   SMALLINT
)
;

ALTER TABLE Interest
ADD CONSTRAINT Interests_PK
PRIMARY KEY ( EmpName, ProdName )
;

CREATE TABLE Product
( ProdName VARCHAR (255) NOT NULL
, Price    DECIMAL (12,2)
)
;

ALTER TABLE Product
ADD CONSTRAINT Product_PK
PRIMARY KEY ( ProdName )
;

ALTER TABLE Employee
ADD CONSTRAINT Employee_Department_FK 
FOREIGN KEY (DepName ) REFERENCES Department ( DepName ) ;

ALTER TABLE Interest
ADD CONSTRAINT Interest_Employee_FK FOREIGN KEY ( EmpName
) REFERENCES Employee ( EmpName )
;

ALTER TABLE Interest
ADD CONSTRAINT Interest_Product_FK
FOREIGN KEY ( ProdName ) REFERENCES Product ( ProdName )
;

ALTER TABLE Employee
ADD CONSTRAINT Manager_FK
FOREIGN KEY ( Manager ) REFERENCES Employee ( EmpName )
;
