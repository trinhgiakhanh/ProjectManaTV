﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Windows.Forms;
namespace project_ManaTV.Repository
{
    internal class Database
    {
        string connectionString = $"Server={ConfigurationManager.AppSettings["SERVER"]};" +
           $"Database={ConfigurationManager.AppSettings["DATABASE"]};" +
           $"Integrated Security={ConfigurationManager.AppSettings["Integrated_Security"]};";
        //string connectionString = $"Server={config.SERVER};Database={config.DATABASE};Integrated Security={config.Integrated_Security};";
        SqlConnection con;
        private SqlCommand command;
        private SqlDataReader reader;

        public Database()
        {
            con = new SqlConnection();
            con.ConnectionString = connectionString;
            command = new SqlCommand();
            command.Connection = con;
            con.Open();

        }

        public string ConnectionString { get => connectionString;}


        public void Disconnect()
        {
            if (con.State == ConnectionState.Open) 
            {
                con.Close(); 
                con.Dispose(); 
            }
        }

        //Dung de lay cau truy van 
        public void SetQuery(string sql)
        {
            this.command.CommandText = sql;
        }
        private List<string> getValueOfQuery()
        {
            List<string> result = new List<string>();
            MatchCollection matches = Regex.Matches(command.CommandText, @"\@\w+");

            foreach (Match match in matches)
            {
                string parameterName = match.Value;
                result.Add(parameterName);
            }
            return result;
        }

		//Dung de danh cho nhung cau lenh update,insert
		public SqlDataReader Excute(params object[] parameters)
		{
			try
			{
				if (reader != null && !reader.IsClosed)
				{
					reader.Close();
				}
				if (parameters != null)
				{
					List<string> res = getValueOfQuery();
					for (int i = 0; i < parameters.Length; i++)
					{
					command.Parameters.AddWithValue(res[i], parameters[i]);
                    }
                }

				reader = command.ExecuteReader();
				command.Parameters.Clear();
				return reader;
			}
			catch (Exception ex)
			{
                MessageBox.Show($"Exception1: {ex.Message}", "Error");
                return null;
			}
		}
		//Lay nhieu dong du lieu
		public List<Dictionary<string,object>> LoadAllRows(params object[] parameters)
        {
            List<Dictionary<string, object>> res = new List<Dictionary<string, object>> { };
            if (reader != null && !reader.IsClosed)
            {
                reader.Close();
            }
            using (reader = Excute(parameters)) 
            {
                if(reader != null && reader.HasRows) 
                {
                    while (reader.Read())
                    {
                        Dictionary<string, object> row = new Dictionary<string, object>();

                        for (int i = 0; i < reader.FieldCount; i++)
                        {
                            if (reader.GetValue(i) == DBNull.Value)
                            {
                                row[reader.GetName(i)] = null;
                            }
                            else
                            {
								row[reader.GetName(i)] = reader.GetValue(i);
                            }

                        }
                        res.Add(row);
                    }
                }
            }
            command.Parameters.Clear();
            return res;
        }
        public int getNumberOfRecorder(params object[] parameters)
        {
            if (reader != null && !reader.IsClosed)
            {
                reader.Close();
            }
            int count = 0;
            using (reader = Excute(parameters))
            {
                while (reader.Read())
                {
                    count++;
                }
            }
            command.Parameters.Clear();
            return count ;
        }

        public Dictionary<string,object> LoadRow(params object[] parameters)
        {
            if (reader != null && !reader.IsClosed)
            {
                reader.Close();
            }
            Dictionary<string,object> res = new Dictionary<string,object>();
            using (SqlDataReader reader = Excute(parameters))
            {
                if(reader != null && reader.HasRows)
                {
                    if (reader.Read())
                    {
                        for (int i = 0; i < reader.FieldCount; i++)
                        {
							if (reader.GetValue(i) == DBNull.Value)
							{
								res[reader.GetName(i)] = null;
							}
							else
							{
								res[reader.GetName(i)] = reader.GetValue(i);
							}

						}
                    }
                }
                
            }
            command.Parameters.Clear();
            return res;
        }


        //Thêm hàm thêm, sửa, xóa
        //Sửa : Sp.Table("Work").Update("")
        //Xóa : 
        //Thêm : 
        //Lấy ra toàn bộ : 
        //Lấy theo id :   
        //Bây giờ muốn : Sp.Table("work").Add("1,1,null,null,1,1");

    }
}
