
/************************************************************************************************

This sp script use to Delete data from table by using Student Id

************************************************************************************************/

CREATE PROC sp_DeleteStudentDetailsById @Id INT
AS
    BEGIN
        DELETE FROM tbl_Student_Details
        WHERE Id = @Id;
    END;