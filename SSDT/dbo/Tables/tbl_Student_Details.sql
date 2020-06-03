
/************************************************************************************************

This script use to create Table tbl_Student_Details to perform DML operation

************************************************************************************************/

CREATE TABLE [dbo].[tbl_Student_Details]
([Id]         INT IDENTITY(1, 1) NOT NULL, 
 [First_Name] VARCHAR(50) NULL, 
 [Last_Name]  VARCHAR(50) NULL, 
 [Email]      VARCHAR(50) NOT NULL, 
 [Gender]     VARCHAR(50) NULL, 
 CONSTRAINT [PK_tbl_Student_Details] PRIMARY KEY CLUSTERED([Id] ASC, [Email] ASC)
);