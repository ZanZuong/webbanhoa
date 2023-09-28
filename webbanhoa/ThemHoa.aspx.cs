using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using webbanhoa.Models;
namespace webbanhoa
{
    public partial class ThemHoa : System.Web.UI.Page
    {
        loaiDAO loaihoadao = new loaiDAO();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NguoiDung"] == null)
            {
                Response.Redirect("~/DangNhap.aspx");
                return;
            }

            if (!IsPostBack)
            {
                ddloai.DataSource = loaihoadao.doctatca();
                ddloai.DataTextField = "tenloai";
                ddloai.DataValueField = "maloai";
                ddloai.DataBind();
            }
        }

        protected void btnxuly_Click(object sender, EventArgs e)
        {
            string tenhoa = txttenhoa.Text;
            int gia = int.Parse(txtgia.Text);
            string hinh = "";
            if (FHinh.HasFile)
            {
                string path = Server.MapPath("~/Uploads/hinh_san_pham") + "/" + FHinh.FileName;
                FHinh.SaveAs(path);
                hinh = FHinh.FileName;
            }
            else
            {
                hinh = "tải xuống.png";
            }
            int maloai = int.Parse(ddloai.SelectedValue);
            DateTime ngaydang = clNgayCapNhat.SelectedDate;
            int ketqua = hoaDao.Them(tenhoa, gia, hinh, maloai, ngaydang, 0);
            if (ketqua > 0)
            {
                Response.Write("<script>alert('Đã thêm sản phẩm thành công') </script>");
            }
            else
            {
                lbThongbao.Text = "Thao tác thêm hoa thất bại";
            }
        }
    }
}