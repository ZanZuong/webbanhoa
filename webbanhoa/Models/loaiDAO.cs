using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace webbanhoa.Models
{
    public class loaiDAO
    {
        public DataTable doctatca()
        {
            DataTable dt = new DataTable();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HoaTuoiDBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from Loai", conn);
            SqlDataAdapter dap = new SqlDataAdapter(cmd);
            dap.Fill(dt);
            return dt;
        }
    }
}