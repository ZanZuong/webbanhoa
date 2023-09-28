using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webbanhoa.Models;

namespace webbanhoa
{
    public partial class XemHoa : System.Web.UI.Page
    {
        loaiDAO loaiDAO = new loaiDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                rptdanhmuc.DataSource = loaiDAO.doctatca();
                rptdanhmuc.DataBind();

            }
        }
    }
}