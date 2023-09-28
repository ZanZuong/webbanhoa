<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="Tracuu.aspx.cs" Inherits="webbanhoa.Tracuu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <h2>Tra Cứu Hoa</h2>
    <div class="from-inline">
        Giá từ
        <asp:TextBox ID="txtgiatu" runat="server"></asp:TextBox>
        Giá từ
        <asp:TextBox ID="txtgiaden" runat="server"></asp:TextBox>
        <asp:Button ID="btntracuu" runat="server" Text="Tra Cứu" CssClass="btn btn-info" OnClick="btntracuu_Click" />
    </div>
    <div class="row">
        <asp:Repeater ID="rpthoa" runat="server">
            <ItemTemplate>
                <div class="col-md-3 item">
                    <div class="i">
                        <a href="#">
                            <img src='<%# Eval("Hinh","Uploads/hinh_san_pham/{0}") %>' />
                        </a>
                    </div>
                    <div class="t">
                        <asp:Label ID="lbTenHoa" runat="server" Text='<%# Eval("TenHoa") %>'></asp:Label>
                        <br>
                        Giá Bán:<asp:Label ID="lbgiaban" CssClass="vn" runat="server" Text='<%# Eval("Gia","{0:#,##0} Đồng") %>'></asp:Label>
                        <br>
                        <asp:Button ID="btnthem" runat="server" Text="Them Vao Gio" CssClass="btn btn-success" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</asp:Content>
