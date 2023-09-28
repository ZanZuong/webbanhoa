using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webbanhoa.Models;

namespace webbanhoa
{
    public partial class DangNhap : System.Web.UI.Page
    {

        NguoiDungDAO nguoiDungDAO = new NguoiDungDAO();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NguoiDung"] != null)
            {
                Response.Redirect("~/Xemhoa.aspx");
            }
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataTable nguoiDung = nguoiDungDAO.DangNhap(txtUserName.Text, txtPassword.Text);

            if (nguoiDung != null)
            {
                Session["NguoiDung"] = nguoiDung;
                Response.Redirect("~/Xemhoa.aspx");
            }
        }
    }
}