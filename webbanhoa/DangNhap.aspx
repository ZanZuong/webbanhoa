<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="webbanhoa.DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <link href="css/all.min.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="chinhsua.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" class="d-flex align-items-center justify-content-center ml-auto mr-auto" style="width: 20%; min-height: 90vh;">
        <div class="border border-info p-4  rounded w-100">
            <div class="mb-3">
                <label class="form-label">Tên tài khoản</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtUserName" />
            </div>
            <div class="mb-3">
                <label class="form-label">Mật khẩu</label>
                <asp:TextBox TextMode="Password" runat="server" CssClass="form-control" ID="txtPassword" />
            </div>
            <div class="d-flex align-items-center justify-content-between">
                <asp:Button runat="server" class="btn btn-primary" Text="Đăng nhập" OnClick="btnLogin_Click" ID="Button1" />
                <a href="XemHoa.aspx" style="color: blue"><i class="fa fa-arrow-alt-circle-left"></i>Về Trang chủ</a>
            </div>
        </div>
    </form>
</body>
</html>
