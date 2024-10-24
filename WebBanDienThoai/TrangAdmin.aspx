<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangAdmin.aspx.cs" Inherits="WebBanDienThoai.TrangAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server"> 
    <div>
        <asp:DataGrid ID="girdSanPham" runat="server" AutoGenerateColumns="false" AllowPaging="true" PageSize="5" PagerStyle-Mode="NumericPages" DataKeyField="ID_SANPHAM" OnItemCommand="girdSanPham_ItemCommand" OnPageIndexChanged="girdSanPham_PageIndexChanged" >
            <Columns>
                <asp:TemplateColumn HeaderText="Tên Điện Thoại">
                    <ItemTemplate>
                        <h3><%#Eval("TEN_SANPHAM") %></h3>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            <Columns>
                <asp:TemplateColumn HeaderText="Hình Ảnh">
                    <ItemTemplate>
                        <img src='<%#Eval("ANH") %>' width="100" height="100" alt="hinhanh"/>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            <Columns>
                <asp:TemplateColumn HeaderText="Công Cụ">
                    <ItemTemplate>
                        <asp:LinkButton ID="linkDelete" CssClass="sty" runat="server" Text="Xoá" Width="100" CommandName="GetDelete" OnClientClick="return confirm('Bạn Muốn Xóa Sản Phẩm Này Đúng Không ?')"></asp:LinkButton>
                        <asp:LinkButton ID="linkUpdata" runat="server" Text="Cập Nhật" Width="100" CommandName="GetUpdate" OnClientClick="return confirm('Bạn Muốn Cập Nhật Sản Phẩm Khác Đúng Không ?')"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
    
            </Columns>
        </asp:DataGrid> 
    </div>
    </form>
</body>
</html>
