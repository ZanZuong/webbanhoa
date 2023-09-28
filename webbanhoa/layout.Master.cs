using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webbanhoa
{
    public partial class layout : System.Web.UI.MasterPage
    {
        protected DataTable nguoiDung = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NguoiDung"] != null)
            {
                nguoiDung = (DataTable)Session["NguoiDung"];
            }
        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect($"~/tracuu.aspx?q={txtSearch.Text}");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Remove("NguoiDung");
        }
    }
}