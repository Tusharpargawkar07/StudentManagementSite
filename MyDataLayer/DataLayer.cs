using System;
using System.Data.SqlClient;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using Logger;
using Ninject;

namespace MyDataLayer
{
    public class DataLayer
    {
        SqlConnection sqlConnection;
        [Inject]
        public ILogger Logger { get; set; }

        public DataLayer(string ConnectionString)
        {
            sqlConnection = new SqlConnection(ConnectionString);
        }

        #region InsertDataFun

        public string InsertData(string Command, Dictionary<string, object> keyValuePairs)
        {
            int result = 0;
            try
            {
                using (SqlCommand sqlCommand = new SqlCommand(Command, sqlConnection))
                {
                    sqlConnection.Open();
                    if (Command.Contains("sp_"))
                        sqlCommand.CommandType = CommandType.StoredProcedure;

                    keyValuePairs.Select(y => y).ToList().ForEach(x => sqlCommand.Parameters.Add(new SqlParameter(x.Key, x.Value)));
                    result = sqlCommand.ExecuteNonQuery();
                  
                }
            }
            catch (Exception ex)
            {
                Logger.ErrorLog(ex);
            }
            finally
            {
                sqlConnection.Close();
            }


            if (result >= 1)
                return "Data Inserted Successfully.";
            return "Error Occurred During Inserting Data.";

        }

        #endregion

        #region GetDataFun

        public DataSet GetData(string query, Dictionary<string, object> keyValuePairs = null)
        {
            DataSet dataSet= new DataSet();
            try
            {
                using (SqlCommand sqlCommand = new SqlCommand(query, sqlConnection))
                {
                    using (SqlDataAdapter sqlDataAdapter = new SqlDataAdapter())
                    {
                        sqlDataAdapter.SelectCommand = sqlCommand;
                        if (query.Contains("sp_"))
                            sqlCommand.CommandType = CommandType.StoredProcedure;

                        if (keyValuePairs != null)
                            keyValuePairs.Select(x => x).ToList().ForEach(y => sqlCommand.Parameters.Add(new SqlParameter(y.Key, y.Value)));
                        dataSet = new DataSet();
                        sqlDataAdapter.Fill(dataSet);


                    }
                }

               
            }
            catch(Exception ex)
            {
                Logger.ErrorLog(ex);
            }
            finally
            {
                sqlConnection.Close();
            }
            return dataSet;
        }

        #endregion

        #region UpdateDataFun

        public int UpdateData(string Query, Dictionary<string, object> dictionary)
        {
            int result = 0;
            try
            {
                using (SqlCommand sqlCommand = new SqlCommand(Query, sqlConnection))
                {
                    sqlConnection.Open();
                    if (Query.Contains("sp_"))
                        sqlCommand.CommandType = CommandType.StoredProcedure;

                    if (dictionary.Count != 0)
                    {
                        dictionary.Select(x => x).ToList().ForEach(y => sqlCommand.Parameters.Add(new SqlParameter(y.Key, y.Value)));
                    }

                    result = sqlCommand.ExecuteNonQuery();
                }
 
            }
            catch(Exception ex)
            {
                Logger.ErrorLog(ex);
            }
            finally
            {
                sqlConnection.Close();
            }
            return result;
        }

        #endregion

        #region DeleteDataFun

        public int DeleteData(string Query, Dictionary<string, object> dictionary)
        {
            int result = 0;
            try
            {
                using (SqlCommand sqlCommand = new SqlCommand(Query, sqlConnection))
                {
                    sqlConnection.Open();
                    if (Query.Contains("sp_"))
                        sqlCommand.CommandType = CommandType.StoredProcedure;

                    if (dictionary.Count != 0)
                    {
                        dictionary.Select(x => x).ToList().ForEach(y => sqlCommand.Parameters.Add(new SqlParameter(y.Key, y.Value)));
                    }

                    result = sqlCommand.ExecuteNonQuery();                
                }

            }
            catch (Exception ex)
            {
                Logger.ErrorLog(ex);
            }
            finally
            {
                sqlConnection.Close();
            }
            return result;
 
        }
        #endregion
    }
}
