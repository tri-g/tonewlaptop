CREATE DATABASE  `License_Portal` /* SQLINES DEMO *** RACTER SET latin1 */;
USE [License_Portal];
-- SQLINES DEMO ***  Distrib 8.0.21, for Win64 (x86_64)
--
-- SQLINES DEMO ***    Database: License_Portal
-- SQLINES DEMO *** -------------------------------------
-- SQLINES DEMO *** 7.21

/* SQLINES DEMO *** ARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/* SQLINES DEMO *** ARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/* SQLINES DEMO *** LLATION_CONNECTION=@@COLLATION_CONNECTION */;
/* SQLINES DEMO *** tf8 */;
/* SQLINES DEMO *** ME_ZONE=@@TIME_ZONE */;
/* SQLINES DEMO *** NE='+00:00' */;
/* SQLINES DEMO *** IQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/* SQLINES DEMO *** REIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/* SQLINES DEMO *** L_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/* SQLINES DEMO *** L_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- SQLINES DEMO *** or table `Algorithm`
--

DROP TABLE IF EXISTS [Algorithm];
/* SQLINES DEMO *** cs_client     = @@character_set_client */;
/* SQLINES DEMO *** er_set_client = utf8mb4 */;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Algorithm (
  [Algorithm ID] int NOT NULL,
  [Name] varchar(45) NOT NULL,
  [Key] varchar(45) NOT NULL,
  [Description] varchar(45) NOT NULL,
  PRIMARY KEY ([Algorithm ID])
) ;
/* SQLINES DEMO *** er_set_client = @saved_cs_client */;

--
-- SQLINES DEMO *** table `Algorithm`
--

LOCK TABLES [Algorithm] WRITE;
/* SQLINES DEMO ***  `Algorithm` DISABLE KEYS */;
INSERT INTO Algorithm VALUES (12345,'XYZ','DSL-SLK-100','xvvbxbncnvnvmn'),(12346,'ABC','DSL-SLK-101','kfhalkfhlkdvkxdbbvkjdbjk');
/* SQLINES DEMO ***  `Algorithm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- SQLINES DEMO *** or table `License`
--

DROP TABLE IF EXISTS [License];
/* SQLINES DEMO *** cs_client     = @@character_set_client */;
/* SQLINES DEMO *** er_set_client = utf8mb4 */;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE License (
  [LicenseID] int NOT NULL,
  [LicenseKey] varchar(45) NOT NULL,
  [Expiration Date] date NOT NULL,
  [Activation Date] date NOT NULL,
  [LicenseType ID] int NOT NULL,
  [Product ID] int NOT NULL,
  [StatusID] int NOT NULL,
  [Algorithm ID] int NOT NULL,
  [OrgID] int NOT NULL,
  [No of Licenses] int NOT NULL,
  [Per License Cost] decimal(10,0) NOT NULL,
  PRIMARY KEY ([LicenseID])
 ,
  CONSTRAINT [FK_Algorithm_License] FOREIGN KEY ([Algorithm ID]) REFERENCES Algorithm ([Algorithm ID]) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT [FK_License_Type] FOREIGN KEY ([LicenseType ID]) REFERENCES LicenseType ([LicenseType ID]) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT [FK_Org_License] FOREIGN KEY ([OrgID]) REFERENCES Organization ([OrgID]) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT [FK_Product_License] FOREIGN KEY ([Product ID]) REFERENCES Products ([Product ID]) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT [FK_Status_License] FOREIGN KEY ([StatusID]) REFERENCES Status ([StatusID]) ON DELETE NO ACTION ON UPDATE NO ACTION
) ;

CREATE INDEX [FK_LICENSE_TYPE_idx] ON License ([LicenseType ID]);
CREATE INDEX [FK_Product_License_idx] ON License ([Product ID]);
CREATE INDEX [FK_Status_License_idx] ON License ([StatusID]);
CREATE INDEX [FK_Algorithm_License_idx] ON License ([Algorithm ID]);
CREATE INDEX [FK_Org_License_idx] ON License ([OrgID]);
/* SQLINES DEMO *** er_set_client = @saved_cs_client */;

--
-- SQLINES DEMO *** table `License`
--

LOCK TABLES [License] WRITE;
/* SQLINES DEMO ***  `License` DISABLE KEYS */;
INSERT INTO License VALUES (100,'LIC-DSL-100','2022-01-12','2021-01-12',10,1,123,12345,1,5,1000),(101,'LIC-DSL-101','2022-01-12','2021-01-12',10,2,124,12346,2,6,2000);
/* SQLINES DEMO ***  `License` ENABLE KEYS */;
UNLOCK TABLES;

--
-- SQLINES DEMO *** or table `LicenseType`
--

DROP TABLE IF EXISTS [LicenseType];
/* SQLINES DEMO *** cs_client     = @@character_set_client */;
/* SQLINES DEMO *** er_set_client = utf8mb4 */;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE LicenseType (
  [LicenseType ID] int NOT NULL,
  [LicenseType] varchar(45) NOT NULL,
  [Description] varchar(200) NOT NULL,
  [IsActive] smallint NOT NULL DEFAULT '1',
  PRIMARY KEY ([LicenseType ID])
) ;
/* SQLINES DEMO *** er_set_client = @saved_cs_client */;

--
-- SQLINES DEMO *** table `LicenseType`
--

LOCK TABLES [LicenseType] WRITE;
/* SQLINES DEMO ***  `LicenseType` DISABLE KEYS */;
INSERT INTO LicenseType VALUES (10,'Monthly','Monthly subscription',1);
/* SQLINES DEMO ***  `LicenseType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- SQLINES DEMO *** or table `License_User`
--

DROP TABLE IF EXISTS [License_User];
/* SQLINES DEMO *** cs_client     = @@character_set_client */;
/* SQLINES DEMO *** er_set_client = utf8mb4 */;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE License_User (
  [LicenseUserID] int NOT NULL IDENTITY,
  [LicenseID] int NOT NULL,
  [UserID] int NOT NULL,
  PRIMARY KEY ([LicenseUserID])
 ,
  CONSTRAINT [FK_License_User] FOREIGN KEY ([UserID]) REFERENCES Users ([UserID]) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT [FK_License_User1] FOREIGN KEY ([LicenseID]) REFERENCES License ([LicenseID]) ON DELETE NO ACTION ON UPDATE NO ACTION
) ;

CREATE INDEX [FK_License_User1_idx] ON License_User ([LicenseID]);
CREATE INDEX [FK_License_User_idx] ON License_User ([UserID]);
/* SQLINES DEMO *** er_set_client = @saved_cs_client */;

--
-- SQLINES DEMO *** table `License_User`
--

LOCK TABLES [License_User] WRITE;
/* SQLINES DEMO ***  `License_User` DISABLE KEYS */;
/* SQLINES DEMO ***  `License_User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- SQLINES DEMO *** or table `OrgType`
--

DROP TABLE IF EXISTS [OrgType];
/* SQLINES DEMO *** cs_client     = @@character_set_client */;
/* SQLINES DEMO *** er_set_client = utf8mb4 */;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE OrgType (
  [OrgType_ID] int NOT NULL IDENTITY,
  [OrgType] varchar(45) NOT NULL,
  [Description] varchar(200) NOT NULL,
  [OrgID] int NOT NULL,
  PRIMARY KEY ([OrgType_ID])
 ,
  CONSTRAINT [FK_Org_OrgType] FOREIGN KEY ([OrgID]) REFERENCES Organization ([OrgID]) ON DELETE NO ACTION ON UPDATE NO ACTION
)  ;

CREATE INDEX [FK_Org_OrgType_idx] ON OrgType ([OrgID]);
/* SQLINES DEMO *** er_set_client = @saved_cs_client */;

--
-- SQLINES DEMO *** table `OrgType`
--

LOCK TABLES [OrgType] WRITE;
/* SQLINES DEMO ***  `OrgType` DISABLE KEYS */;
INSERT INTO OrgType VALUES (1,'Private','Private Organisation',1),(2,'Public','Public Organisation',2);
/* SQLINES DEMO ***  `OrgType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- SQLINES DEMO *** or table `Org_Products`
--

DROP TABLE IF EXISTS [Org_Products];
/* SQLINES DEMO *** cs_client     = @@character_set_client */;
/* SQLINES DEMO *** er_set_client = utf8mb4 */;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Org_Products (
  [OrgProductID] int NOT NULL,
  [OrgID] int NOT NULL,
  [ProductID] int NOT NULL,
  PRIMARY KEY ([OrgProductID])
 ,
  CONSTRAINT [FK_Org_Prd] FOREIGN KEY ([ProductID]) REFERENCES Products ([Product ID]) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT [FK_Org_Prd1] FOREIGN KEY ([OrgID]) REFERENCES Organization ([OrgID]) ON DELETE NO ACTION ON UPDATE NO ACTION
) ;

CREATE INDEX [FK_Org_Prd_idx] ON Org_Products ([ProductID]);
CREATE INDEX [FK_Org_Prd1_idx] ON Org_Products ([OrgID]);
/* SQLINES DEMO *** er_set_client = @saved_cs_client */;

--
-- SQLINES DEMO *** table `Org_Products`
--

LOCK TABLES [Org_Products] WRITE;
/* SQLINES DEMO ***  `Org_Products` DISABLE KEYS */;
/* SQLINES DEMO ***  `Org_Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- SQLINES DEMO *** or table `Org_User`
--

DROP TABLE IF EXISTS [Org_User];
/* SQLINES DEMO *** cs_client     = @@character_set_client */;
/* SQLINES DEMO *** er_set_client = utf8mb4 */;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Org_User (
  [OrgUserID] int NOT NULL IDENTITY,
  [UserID] int NOT NULL,
  [OrgID] int NOT NULL,
  PRIMARY KEY ([OrgUserID])
 ,
  CONSTRAINT [FK_Org_User] FOREIGN KEY ([OrgID]) REFERENCES Organization ([OrgID]) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT [FK_Org_User1] FOREIGN KEY ([UserID]) REFERENCES Users ([UserID]) ON DELETE NO ACTION ON UPDATE NO ACTION
)  ;

CREATE INDEX [FK_Org_User_idx] ON Org_User ([OrgID]);
CREATE INDEX [FK_Org_User1_idx] ON Org_User ([UserID]);
/* SQLINES DEMO *** er_set_client = @saved_cs_client */;

--
-- SQLINES DEMO *** table `Org_User`
--

LOCK TABLES [Org_User] WRITE;
/* SQLINES DEMO ***  `Org_User` DISABLE KEYS */;
INSERT INTO Org_User VALUES (1,100,1),(2,101,2),(3,103,2),(4,104,2),(5,105,1),(6,106,1),(7,107,1),(8,108,1),(9,109,1),(10,110,2),(11,111,2),(12,112,1);
/* SQLINES DEMO ***  `Org_User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- SQLINES DEMO *** or table `Organization`
--

DROP TABLE IF EXISTS [Organization];
/* SQLINES DEMO *** cs_client     = @@character_set_client */;
/* SQLINES DEMO *** er_set_client = utf8mb4 */;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Organization (
  [OrgID] int NOT NULL,
  [OrgName] varchar(50) NOT NULL,
  [OrgEmailAdd] varchar(50) NOT NULL,
  [OrgConNumber] varchar(50) NOT NULL,
  [Org Address] varchar(200) NOT NULL,
  [PostCode] int NOT NULL,
  PRIMARY KEY ([OrgID])
) ;
/* SQLINES DEMO *** er_set_client = @saved_cs_client */;

--
-- SQLINES DEMO *** table `Organization`
--

LOCK TABLES [Organization] WRITE;
/* SQLINES DEMO ***  `Organization` DISABLE KEYS */;
INSERT INTO Organization VALUES (1,'SLK','slk@gmail.com','9012334552','Bangalore',560061),(2,'VFISLK','mnt@gmail.com','9012334552','Hyderabad',500055);
/* SQLINES DEMO ***  `Organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- SQLINES DEMO *** or table `Products`
--

DROP TABLE IF EXISTS [Products];
/* SQLINES DEMO *** cs_client     = @@character_set_client */;
/* SQLINES DEMO *** er_set_client = utf8mb4 */;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Products (
  [Product ID] int NOT NULL,
  [PrdName] varchar(45) NOT NULL,
  [PrdDesc] varchar(200) NOT NULL,
  [ProductCode] varchar(20) NOT NULL,
  [PrdVersion] varchar(45) NOT NULL,
  PRIMARY KEY ([Product ID])
) ;
/* SQLINES DEMO *** er_set_client = @saved_cs_client */;

--
-- SQLINES DEMO *** table `Products`
--

LOCK TABLES [Products] WRITE;
/* SQLINES DEMO ***  `Products` DISABLE KEYS */;
INSERT INTO Products VALUES (1,'Oracle','Database product','ABC','10.0'),(2,'Java','Java Software','XYZ','1.8');
/* SQLINES DEMO ***  `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- SQLINES DEMO *** or table `Roles`
--

DROP TABLE IF EXISTS [Roles];
/* SQLINES DEMO *** cs_client     = @@character_set_client */;
/* SQLINES DEMO *** er_set_client = utf8mb4 */;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Roles (
  [RoleID] int NOT NULL IDENTITY,
  [RoleName] varchar(50) NOT NULL,
  [RoleType] varchar(45) NOT NULL,
  [RoleDescription] varchar(200) NOT NULL,
  PRIMARY KEY ([RoleID])
)  ;
/* SQLINES DEMO *** er_set_client = @saved_cs_client */;

--
-- SQLINES DEMO *** table `Roles`
--

LOCK TABLES [Roles] WRITE;
/* SQLINES DEMO ***  `Roles` DISABLE KEYS */;
INSERT INTO Roles VALUES (1000,'admin','admin','admin role'),(1001,'user','user','user role');
/* SQLINES DEMO ***  `Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- SQLINES DEMO *** or table `Status`
--

DROP TABLE IF EXISTS [Status];
/* SQLINES DEMO *** cs_client     = @@character_set_client */;
/* SQLINES DEMO *** er_set_client = utf8mb4 */;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Status (
  [StatusID] int NOT NULL,
  [Description] varchar(45) NOT NULL,
  PRIMARY KEY ([StatusID])
) ;
/* SQLINES DEMO *** er_set_client = @saved_cs_client */;

--
-- SQLINES DEMO *** table `Status`
--

LOCK TABLES [Status] WRITE;
/* SQLINES DEMO ***  `Status` DISABLE KEYS */;
INSERT INTO Status VALUES (123,'safgsdgsgsdg'),(124,'dfdhfhdfhdf');
/* SQLINES DEMO ***  `Status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- SQLINES DEMO *** or table `Users`
--

DROP TABLE IF EXISTS [Users];
/* SQLINES DEMO *** cs_client     = @@character_set_client */;
/* SQLINES DEMO *** er_set_client = utf8mb4 */;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Users (
  [UserID] int NOT NULL IDENTITY,
  [UserName] varchar(50) NOT NULL,
  [EmailAddress] varchar(50) NOT NULL,
  [ContactNumber] int NOT NULL,
  [Address] varchar(200) NOT NULL,
  [lastlogin] datetime2(0) DEFAULT NULL,
  [password] varchar(50) NOT NULL,
  PRIMARY KEY ([UserID])
)  ;
/* SQLINES DEMO *** er_set_client = @saved_cs_client */;

--
-- SQLINES DEMO *** table `Users`
--

LOCK TABLES [Users] WRITE;
/* SQLINES DEMO ***  `Users` DISABLE KEYS */;
INSERT INTO Users VALUES (100,'testtt','dslk@slkgroup.com',9999999,'Bangalore','2021-01-19 19:39:28','test'),(101,'dsl123','DSL123@slk.com',647375355,'Hyderabad','2020-08-20 18:30:00','DSL123'),(102,'test123','test123@gmail.com',678646783,'Bangalore','2021-01-19 19:39:28','asds'),(103,'slk','test@slk.com',678646782,'Chennai','2021-01-19 19:39:28','slk'),(104,'dsl','dsl@gmail.com',678646781,'Mangalore','2021-01-19 19:39:28','admin'),(105,'admin','admin@admin.com',678646780,'Mysore','2021-01-22 16:21:56','admin'),(106,'dsl456','dsl456@slkdoft.com',678646790,'Delhi','2020-12-04 18:30:00','dsl456'),(107,'slk26','slk26@slk.com',365873656,'mumbai','2020-08-25 18:30:00','test'),(108,'himabindu','bindu.gjs@gmail.com',664666666,'Punjab','2018-12-26 18:30:00','bindu123'),(109,'TestIDM','testidm@slk.com',465646678,'Kolkata','2018-12-26 18:30:00','test'),(110,'dsltest123','test1234@slk.com',453553554,'Vijaywada','2020-08-25 18:30:00','slk'),(111,'Yathish','rahul@gmail.com',453566566,'Pune','2020-08-25 18:30:00','star123'),(112,'dsltest','test123@slk.com',364666666,'Noida','2018-12-26 18:30:00','slk');
/* SQLINES DEMO ***  `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- SQLINES DEMO *** or table `Users_Roles`
--

DROP TABLE IF EXISTS [Users_Roles];
/* SQLINES DEMO *** cs_client     = @@character_set_client */;
/* SQLINES DEMO *** er_set_client = utf8mb4 */;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Users_Roles (
  [Users_Role_ID] int NOT NULL IDENTITY,
  [UserID] int NOT NULL,
  [RoleID] int NOT NULL,
  PRIMARY KEY ([Users_Role_ID])
 ,
  CONSTRAINT [FK_User_Role] FOREIGN KEY ([UserID]) REFERENCES Users ([UserID]) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT [FK_User_Role1] FOREIGN KEY ([RoleID]) REFERENCES Roles ([RoleID]) ON DELETE NO ACTION ON UPDATE NO ACTION
)  ;

CREATE INDEX [FK_User_Role_idx] ON Users_Roles ([UserID]);
CREATE INDEX [FK_User_Role1_idx] ON Users_Roles ([RoleID]);
/* SQLINES DEMO *** er_set_client = @saved_cs_client */;

--
-- SQLINES DEMO *** table `Users_Roles`
--

LOCK TABLES [Users_Roles] WRITE;
/* SQLINES DEMO ***  `Users_Roles` DISABLE KEYS */;
INSERT INTO Users_Roles VALUES (200,100,1001),(201,101,1001),(202,102,1001),(203,103,1000),(204,104,1001),(205,105,1000),(206,106,1000),(207,107,1001),(208,108,1001),(209,109,1001),(210,110,1001),(211,111,1001);
/* SQLINES DEMO ***  `Users_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- SQLINES DEMO *** r database 'License_Portal'
--

--
-- SQLINES DEMO *** for database 'License_Portal'
--
/* SQLINES DEMO *** NE=@OLD_TIME_ZONE */;

/* SQLINES DEMO *** E=@OLD_SQL_MODE */;
/* SQLINES DEMO *** _KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/* SQLINES DEMO *** CHECKS=@OLD_UNIQUE_CHECKS */;
/* SQLINES DEMO *** ER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/* SQLINES DEMO *** ER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/* SQLINES DEMO *** ON_CONNECTION=@OLD_COLLATION_CONNECTION */;
/* SQLINES DEMO *** ES=@OLD_SQL_NOTES */;

-- SQLINES DEMO ***  2021-06-15 13:27:55
