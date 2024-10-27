<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangnhapadmin.aspx.cs" Inherits="WebBanDienThoai.dangnhapadmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>
        <asp:Label ID="lblThongBaoDN" runat="server" ></asp:Label>
    </h1>
        <br />
        Tên Đăng Nhập : <asp:TextBox ID="txtUser" runat="server" ></asp:TextBox>
        <br />
        Mật Khẩu : <asp:TextBox ID="txtMK" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Button ID="btnDangNhap" runat="server" Text="Đăng Nhập" OnClick="btnDangNhap_Click" />
    </div>
    </form>
</body>
</html>
