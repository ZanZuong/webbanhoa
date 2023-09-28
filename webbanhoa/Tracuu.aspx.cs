using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webbanhoa.Models;
namespace webbanhoa
{
    public partial class Tracuu : System.Web.UI.Page
    {
        string key = "";
        hoaDao hoadao = new hoaDao();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["q"] != null)
            {
                key = Request.QueryString["q"];
            }

            rpthoa.DataSource = hoadao.TimKiemHoa(key);
            rpthoa.DataBind();
        }

        protected void btntracuu_Click(object sender, EventArgs e)
        {
            int tu = int.Parse(txtgiatu.Text);
            int den = int.Parse(txtgiaden.Text);
            rpthoa.DataSource = hoadao.tracuutheogia(tu, den);
            rpthoa.DataBind();
        }
    }
}