using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace webbanhoa.Models
{
    public class NguoiDungDAO
    {
        public DataTable DangNhap(string userName, string password)
        {
            DataTable dt = new DataTable();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HoaTuoiDBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from NguoiDung where username = @username and password = @password", conn);
            cmd.Parameters.AddWithValue("@username", userName);
            cmd.Parameters.AddWithValue("@password", password);
            SqlDataAdapter dat = new SqlDataAdapter(cmd);
            dat.Fill(dt);
            return dt;
        }
    }
}