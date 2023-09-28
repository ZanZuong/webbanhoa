<%@ Page Title="" Language="C#" MasterPageFile="~/layout.Master" AutoEventWireup="true" CodeBehind="XemHoa.aspx.cs" Inherits="webbanhoa.XemHoa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="NoiDung" runat="server">
    <div class="container mt-5 mb-5">
        <div class="from-inline">
            <div class="form-group d-flex align-items-center">
                <span style="width: 10%;">Danh mục loại:</span>
                <asp:DropDownList Width="20%" ID="ddlLoai" runat="server" CssClass="form-control" AutoPostBack="True" DataSourceID="dsLoai" DataTextField="TenLoai" DataValueField="MaLoai"></asp:DropDownList>
            </div>

            <asp:SqlDataSource ID="dsHoa" runat="server" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>" SelectCommand="SELECT * FROM [Hoa] WHERE ([MaLoai] = @MaLoai)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlLoai" Name="MaLoai" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="dsLoai" runat="server" ConnectionString="<%$ ConnectionStrings:HoaTuoiDBConnectionString %>" SelectCommand="SELECT * FROM [Loai]"></asp:SqlDataSource>
        </div>
        <div class="row">
            <div class="col-3">
                <div id="main-menu" class="row side-bars" role="navigation">
                    <h2 title="Danh mục hoa tươi">Danh mục hoa tươi</h2>
                    <ul id="main-flowers" class="left-menu">
                        <asp:Repeater ID="rptdanhmuc" runat="server">
                            <ItemTemplate>
                                <li class="cat"><strong><a href="#" title="Bó hoa mix" class="bullet"><%# Eval("TenLoai") %></a></strong></li>
                            </ItemTemplate>
                        </asp:Repeater>


                    </ul>
                    <h2 title="Xuất xứ">Xuất xứ</h2>
                    <ul id="main-manu" class="left-menu">
                        <li class="manuf"><strong><a href="#" title="ColorLife" class="bullet">ColorLife</a></strong></li>
                        <li class="manuf"><strong><a href="#" title="CTY" class="bullet">CTY</a></strong></li>
                        <li class="manuf"><strong><a href="#" title="LamGarden" class="bullet">LamGarden</a></strong></li>
                    </ul>
                    <h2>Liên Hệ qua Zalo</h2>
                    <ul class="zalo">
                        <li><strong>Miền Bắc:</strong><a href="#" target="_blank">1234567890</a></li>
                        <li><strong>Miền Trung:</strong><a href="#" target="_blank">1234567890</a></li>
                        <li><strong>Miền Nam:</strong><a href="#" target="_blank">1234567890</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-9">
                <div class="row ">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="dsHoa">
                        <ItemTemplate>
                            <div class="col-md-3 item">
                                <div class="i">
                                    <a href="#">
                                        <img src='<%# Eval("Hinh","Uploads/hinh_san_pham/{0}") %>' />
                                    </a>
                                </div>
                                <div class="t">
                                    <asp:Label ID="lbTenHoa" runat="server" Text='<%# Eval("TenHoa") %>'></asp:Label>
                                    </br >
                        Giá Bán:<asp:Label ID="lbgiaban" CssClass="vn" runat="server" Text='<%# Eval("Gia","{0:#,##0} Đồng") %>'></asp:Label>
                                    </br>
                        <asp:Button ID="btnthem" runat="server" Text="Thêm vào giỏ" CssClass="btn btn-success" />
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>


            </div>
        </div>

    </div>
</asp:Content>
