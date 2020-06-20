using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;
using Logger;
using MyDataLayer;
using Ninject;

namespace CRUDOperationWebApp
{
    public partial class StudentDetails : System.Web.UI.Page
    {
        [Inject]
        public ILogger Logger { get; set; }

        [Inject]
        public DataLayer DataLayer { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            //tboxId.Enabled = true;
            // tboxFName.Focus();
            lblMessage.Text = "";
        }

        protected void btnInsertDetails_Click(object sender, EventArgs e)
        {
            try
            {
                string conString = ConfigurationManager.ConnectionStrings["DefaultConStr"].ConnectionString;
                //string sqlCmd = "Insert Into tbl_Student_Details(First_Name,Last_Name,Email,Gender) values(@First_Name,@Last_Name,@Email,@Gender);";
                string sqlCmd = "sp_InsertStudentDetails";

               // DataLayer dataLayer = new DataLayer(conString);
                lblMessage.Text = DataLayer.InsertData(sqlCmd,
                    new Dictionary<string, object>()
                    {
                        ["@First_Name"] = tboxFName.Text,
                        ["@Last_Name"] = tboxLName.Text,
                        ["@Email"] = tboxEmail.Text,
                        ["@Gender"] = tboxGender.Text
                    }
                    );
            }
            catch (Exception ex)
            {
                Logger.ErrorLog(ex);
                Server.Transfer("~/ErrorPage/ErrorPage.aspx");
            }

        }

        protected void btnGetData_Click(object sender, EventArgs e)
        {
            try
            {
                // dataLayer = new DataLayer(ConfigurationManager.ConnectionStrings["DefaultConStr"].ConnectionString);
                if (((Button)sender).ID == "btnGetAllData")
                    tboxId.Text = "0";
                if (int.TryParse(tboxId.Text, out int Id))
                {


                    DataSet dataSet = DataLayer.GetData("sp_GetStudentDetailsById", new Dictionary<string, object>() { { "@Id", Id } });

                    //DataSet dataSet = dataLayer.GetData("Select * from tbl_Student_Details where Id =@Id", new Dictionary<string, object>() { {"@Id",tboxId.Text } });

                    if (tboxId.Text != "0")
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
                else
                {
                    lblMessage.Text = "Enter Numeric values only";
                }
            }
            catch (Exception ex)
            {
                Logger.ErrorLog(ex);
                Server.Transfer("~/ErrorPage/ErrorPage.aspx");
            }

        }

        protected void btnUpdateDetails_Click(object sender, EventArgs e)
        {
            try
            {
                int result = 0;
               // DataLayer dataLayer = new DataLayer(ConfigurationManager.ConnectionStrings["DefaultConStr"].ConnectionString);
                DataSet dataSet = DataLayer.GetData("sp_GetStudentDetailsById", new Dictionary<string, object>() { { "@Id", tboxId.Text } });
                if (dataSet.Tables[0].Rows.Count >= 1)
                {
                    result = DataLayer.UpdateData("sp_UpdateStudentDetailsById", new Dictionary<string, object>() { { "@Id", tboxId.Text },  {"@First_Name",tboxFName.Text },
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
            catch (Exception ex)
            {
                Logger.ErrorLog(ex);
                Server.Transfer("~/ErrorPage/ErrorPage.aspx");
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {


                int result = 0;
               // DataLayer dataLayer = new DataLayer(ConfigurationManager.ConnectionStrings["DefaultConStr"].ConnectionString);
                DataSet dataSet = DataLayer.GetData("sp_GetStudentDetailsById", new Dictionary<string, object>() { { "@Id", tboxId.Text } });
                if (dataSet.Tables[0].Rows.Count >= 1)
                {
                    result = DataLayer.DeleteData("sp_DeleteStudentDetailsById", new Dictionary<string, object>() { { "@Id", tboxId.Text } });

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
            catch (Exception ex)
            {
                Logger.ErrorLog(ex);
                Server.Transfer("~/ErrorPage/ErrorPage.aspx");
            }
        }

        protected void btnGetAllData_Click(object sender, EventArgs e)
        {
            btnGetData_Click(sender, e);
        }
    }
}