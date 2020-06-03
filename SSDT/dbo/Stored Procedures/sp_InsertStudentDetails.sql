
/************************************************************************************************

This sp script use to Insert student Records in Table

************************************************************************************************/

CREATE PROC sp_InsertStudentDetails @First_Name NVARCHAR(50), 
                                    @Last_Name  NVARCHAR(50), 
                                    @Email      NVARCHAR(50), 
                                    @Gender     NVARCHAR(50)
AS
    BEGIN
        INSERT INTO tbl_Student_Details
        (First_Name, 
         Last_Name, 
         Email, 
         Gender
        )
        VALUES
        (@First_Name, 
         @Last_Name, 
         @Email, 
         @Gender
        );
    END;