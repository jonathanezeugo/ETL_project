-- RESETING TABLES 
DROP TABLE IF EXISTS WellStatus_Simple;
DROP TABLE IF EXISTS WellsSimpleIndexW;
DROP TABLE IF EXISTS ContractSimple;
DROP TABLE IF EXISTS Areas_GISObjects;
DROP TABLE IF EXISTS AreaOperatorsSimple;
DROP TABLE IF EXISTS WellClass_Simple;
DROP TABLE IF EXISTS ResourceSimple;
DROP TABLE IF EXISTS Fluids_Simple;
DROP TABLE IF EXISTS WellOperator_Simple;


-- Creating WellStatus_Simple table
CREATE TABLE WellStatus_Simple
(
	STATUS varchar(20),
	ST_ID int PRIMARY KEY
);
-- Initial query of WellStatus_Simple table
SELECT * FROM WellStatus_Simple

-- Creating WellsSimpleIndexW table
CREATE TABLE WellsSimpleIndexW
(
	WID int UNIQUE,
	WELL_NAME varchar(200),
	WELL_S_NAME varchar(100),
	ELEVATION numeric,	
	DEPTH_m numeric,
	ID_NQN varchar(10),
	LATITUDE varchar,
	LONGITUDE varchar,
	F_ID int,
	FOREIGN KEY (F_ID) REFERENCES Fluids_Simple(F_ID),
	RID int,
	FOREIGN KEY (RID) REFERENCES ResourceSimple(RID),
	Geometry_ID int,
	FOREIGN KEY (Geometry_ID) REFERENCES WellClass_Simple(Geometry_ID),
	OP_ID int,
	FOREIGN KEY (OP_ID) REFERENCES WellOperator_Simple(OP_ID),
	ST_ID int,
	FOREIGN KEY (ST_ID) REFERENCES WellStatus_Simple(ST_ID),
	FM_ID int
);

-- Initial query of WellsSimpleIndexW table
SELECT * FROM WellsSimpleIndexW

-- Creating WellOperator_Simple Table
CREATE TABLE WellOperator_Simple
(
	OPERATOR varchar(50) UNIQUE,
	OP_ID int UNIQUE
);

-- Initial query of WellOperator_Simple table
SELECT * FROM WellOperator_Simple

-- Creating ContractSimple table
CREATE TABLE ContractSimple
(
	CONTRACT_TYPE varchar(100),
	INDEX2 int UNIQUE
);

-- Initial query of ContractSimple table
SELECT * FROM ContractSimple

--Creating Areas_GISObjects table
CREATE TABLE Areas_GISObjects
(
	INDEX int,
	AREA_NAME varchar(100),
	OBJECTID numeric,
	SURFACE_AREA numeric,
	PERIMETER numeric,
	OPERATOR_INDEX3 int,
	FOREIGN KEY (OPERATOR_INDEX3) REFERENCES AreaOperatorsSimple(INDEX3),
	CONTRACT_INDEX2 int,
	FOREIGN KEY (CONTRACT_INDEX2) REFERENCES ContractSimple(INDEX2)
);

-- Initial query of Areas_GISObjects table
SELECT * FROM Areas_GISObjects


-- Creating AreaOperatorsSimple table
CREATE TABLE AreaOperatorsSimple
(
	OPERATOR varchar(100),
	FOREIGN KEY (OPERATOR) REFERENCES WellOperator_Simple(OPERATOR),
	OP_ABBR varchar(20),
	INDEX3 int UNIQUE
);

-- Initial query of AreaOperatorsSimple table
SELECT * FROM AreaOperatorsSimple


-- Creating WellClass_Simple table
CREATE TABLE WellClass_Simple
(
	GEOMETRY varchar(20),
	Geometry_ID int UNIQUE,
	English varchar(20),
	Angle_from_vertical varchar(20)
);

-- Initial query of WellClass_Simple table
SELECT * FROM WellClass_Simple


-- Creating ResourceSimple table
CREATE TABLE ResourceSimple
(
	RESOURCE_TYPE varchar(5),
	RID int UNIQUE,
	R_NAME varchar(20),
	Seal varchar(10),
	Mechanism varchar(30),
	Porosity varchar(30)
);

-- Initial query of ResourceSimple table
SELECT * FROM ResourceSimple


-- Creating Fluids_Simple table
CREATE TABLE Fluids_Simple
(
	FLUID varchar(10),
	F_ID int UNIQUE,
	English varchar(30),
	AT_Surface varchar(30)
);

-- Initial query of Fluids_Simple table
SELECT * FROM Fluids_Simple

