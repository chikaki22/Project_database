<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangAdmin.aspx.cs" Inherits="WebBanDienThoai.TrangAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server"> 
    <div> 
        <!--datagird có phân trang dùng cho nhiều dữ liệu; agcl đỗ dl ra true đỗ hết, false lấy theo ý muốn ;alp phân trang; df lưu khóa chính; itemcommand hành động ; pageindex qua trang -->
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
                        <img src='<%#"./img/products/" + Eval("ANH") %>' width="100" height="100" alt="hinhanh"/>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            <Columns>
                <asp:TemplateColumn HeaderText="Công Cụ">
                    <ItemTemplate>
                        <asp:LinkButton ID="linkDelete" runat="server" Text="Xoá" Width="100" CommandName="GetDelete" OnClientClick="return confirm('Bạn Muốn Xóa Sản Phẩm Này Đúng Không ?')"></asp:LinkButton>
                        <asp:LinkButton ID="linkUpdata" runat="server" Text="Cập Nhật" Width="100" CommandName="GetUpdate" ></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateColumn>
    
            </Columns>
        </asp:DataGrid> 
    </div>
    </form>
</body>
</html>
