
/************************************************************************************************

This Sp script use to Get Student Data with or without Student Id

************************************************************************************************/

CREATE PROC sp_GetStudentDetailsById @Id INT = 0
AS
    BEGIN
        IF(@Id != 0)
            SELECT *
            FROM tbl_Student_Details
            WHERE Id = @Id;
            ELSE
            SELECT *
            FROM tbl_Student_Details;
    END;