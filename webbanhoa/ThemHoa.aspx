<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="ThemHoa.aspx.cs" Inherits="webbanhoa.ThemHoa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">

    <div class="from-group">
        Danh Mục
        <asp:DropDownList ID="ddloai" runat="server" CssClass="form-control"></asp:DropDownList>
    </div>
    <div class="from-group">
        Tên Hoa
        <asp:TextBox ID="txttenhoa" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="from-group">
        Giá
        <asp:TextBox ID="txtgia" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
    <div class="from-group">
        Ngày Cập Nhật
        <asp:Calendar ID="clNgayCapNhat" runat="server"></asp:Calendar>
    </div>
    <div class="from-group">
        Hình
        <asp:FileUpload ID="FHinh" runat="server" CssClass="form-control"></asp:FileUpload>
    </div>
    <div class="from-group">
        <asp:Button ID="btnxuly" runat="server" Text="THêm Mới" CssClass="btn btn-info" OnClick="btnxuly_Click" />
    </div>
    <div class="from-group">
        <asp:Label ID="lbThongbao" runat="server" Text="" ForeColor="Red"></asp:Label>
    </div>
</asp:Content>
