using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyDataLayer;

namespace CRUDOperationWebApp
{
    public partial class StudentDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tboxId.Enabled = true;
            // tboxFName.Focus();
            lblMessage.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conString = ConfigurationManager.ConnectionStrings["DefaultConStr"].ConnectionString;
            //string sqlCmd = "Insert Into tbl_Student_Details(First_Name,Last_Name,Email,Gender) values(@First_Name,@Last_Name,@Email,@Gender);";
            string sqlCmd = "sp_InsertStudentDetails";
            //if (sqlCmd.Contains("Insert Into"))
            //{
            //    tboxId.Enabled = false;
            //    tboxFName.Focus();
            //}

            DataLayer dataLayer = new DataLayer(conString);
            lblMessage.Text = dataLayer.InsertData(sqlCmd,
                new Dictionary<string, object>()
                {
                    ["@First_Name"] = tboxFName.Text,
                    ["@Last_Name"] = tboxLName.Text,
                    ["@Email"] = tboxEmail.Text,
                    ["@Gender"] = tboxGender.Text
                }
                );

        }

        protected void btnGetData_Click(object sender, EventArgs e)
        {
            DataLayer dataLayer = new DataLayer(ConfigurationManager.ConnectionStrings["DefaultConStr"].ConnectionString);
            DataSet dataSet = dataLayer.GetData("sp_GetStudentDetailsById", new Dictionary<string, object>() { { "@Id", tboxId.Text } });

            //DataSet dataSet = dataLayer.GetData("Select * from tbl_Student_Details where Id =@Id", new Dictionary<string, object>() { {"@Id",tboxId.Text } });
            //tboxId.Enabled = true;
            if (tboxId.Text != string.Empty)
            {
                if (dataSet.Tables[0].Rows.Count > 0)
                {
                    tboxFName.Text = dataSet.Tables[0].Rows[0][1].ToString();//.ToString();
                    tboxLName.Text = dataSet.Tables[0].Rows[0][2].ToString();
                    tboxEmail.Text = dataSet.Tables[0].Rows[0][3].ToString();
                    tboxGender.Text = dataSet.Tables[0].Rows[0][4].ToString();

                    GridViewStudentDetails.DataSource = null;
                    GridViewStudentDetails.DataBind();
                }
            }
            else
            {
                if (dataSet.Tables[0].Rows.Count > 0)
                {
                    tboxFName.Text = "";
                    tboxLName.Text = "";
                    tboxEmail.Text = "";
                    tboxGender.Text = "";
                    GridViewStudentDetails.DataSource = dataSet.Tables[0];
                    GridViewStudentDetails.DataBind();
                }
            }

            lblMessage.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int result = 0;
            DataLayer dataLayer = new DataLayer(ConfigurationManager.ConnectionStrings["DefaultConStr"].ConnectionString);
            DataSet dataSet = dataLayer.GetData("sp_GetStudentDetailsById", new Dictionary<string, object>() { { "@Id", tboxId.Text } });
            if (dataSet.Tables[0].Rows.Count >= 1)
            {
                result = dataLayer.UpdateData("sp_UpdateStudentDetailsById", new Dictionary<string, object>() { { "@Id", tboxId.Text },  {"@First_Name",tboxFName.Text },
                     { "@Last_Name" ,tboxLName.Text },
                     { "@Email" ,tboxEmail.Text },
                     { "@Gender" ,tboxGender.Text}});

            }
            else
            {
                tboxFName.Text = "";
                tboxLName.Text = "";
                tboxEmail.Text = "";
                tboxGender.Text = "";
                lblMessage.Text = $"No record Found For {tboxId.Text}.";
            }

            if (result > 0)
                lblMessage.Text = "Data Updated Successfully.";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int result = 0;
            DataLayer dataLayer = new DataLayer(ConfigurationManager.ConnectionStrings["DefaultConStr"].ConnectionString);
            DataSet dataSet = dataLayer.GetData("sp_GetStudentDetailsById", new Dictionary<string, object>() { { "@Id", tboxId.Text } });
            if (dataSet.Tables[0].Rows.Count >= 1)
            {
                result = dataLayer.DeleteData("sp_DeleteStudentDetailsById", new Dictionary<string, object>() { {"@Id", tboxId.Text }});

            }
            else
            {
                tboxFName.Text = "";
                tboxLName.Text = "";
                tboxEmail.Text = "";
                tboxGender.Text = "";
                lblMessage.Text = $"No record Found For student id {tboxId.Text}.";
            }

            if (result > 0)
            {
                tboxFName.Text = "";
                tboxLName.Text = "";
                tboxEmail.Text = "";
                tboxGender.Text = "";
                lblMessage.Text = $" Record successfully Deleted For student id {tboxId.Text}.";
            }

        }
    }
}