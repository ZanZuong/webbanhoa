using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace webbanhoa.Models
{
    public class hoaDao
    {
        public DataTable tracuutheogia(int tu, int den)
        {
            DataTable dt = new DataTable();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HoaTuoiDBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from Hoa where gia>=@tu and gia<=@den", conn);
            cmd.Parameters.AddWithValue("@tu", tu);
            cmd.Parameters.AddWithValue("@den", den);
            SqlDataAdapter dat = new SqlDataAdapter(cmd);
            dat.Fill(dt);
            return dt;
        }

        public DataTable TimKiemHoa(string tuKhoa)
        {
            DataTable dt = new DataTable();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HoaTuoiDBConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("select * from Hoa where tenhoa like @key", conn);
            cmd.Parameters.AddWithValue("@key", $"%{tuKhoa}%");
            SqlDataAdapter dat = new SqlDataAdapter(cmd);
            dat.Fill(dt);
            return dt;
        }


        public static int Them(string tenhoa, int gia, string hinh, int maloai, DateTime ngaydang, int soluotxem)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["HoaTuoiDBConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into hoa (tenhoa,gia,hinh,maloai,ngaydang,soluotxem)" +
                "values(@tenhoa,@gia,@hinh,@maloai,@ngaydang,@soluotxem)", conn);
            cmd.Parameters.AddWithValue("@tenhoa", tenhoa);
            cmd.Parameters.AddWithValue("@gia", gia);
            cmd.Parameters.AddWithValue("@hinh", hinh);
            cmd.Parameters.AddWithValue("@maloai", maloai);
            cmd.Parameters.AddWithValue("@ngaydang", ngaydang);
            cmd.Parameters.AddWithValue("@soluotxem", soluotxem);
            return cmd.ExecuteNonQuery();
        }
    }
}