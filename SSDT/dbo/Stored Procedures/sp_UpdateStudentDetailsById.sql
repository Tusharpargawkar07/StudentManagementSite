
/************************************************************************************************

This sp script use to update Table tbl_Student_Details by using student Id

************************************************************************************************/

CREATE PROC sp_UpdateStudentDetailsById @Id         INT, 
                                        @First_Name NVARCHAR(50), 
                                        @Last_Name  NVARCHAR(50), 
                                        @Email      NVARCHAR(50), 
                                        @Gender     NVARCHAR(50)
AS
    BEGIN
        UPDATE tbl_Student_Details
          SET 
              First_Name = @First_Name, 
              Last_Name = @Last_Name, 
              Email = @Email, 
              Gender = @Gender
        WHERE Id = @Id;
    END;