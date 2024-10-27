<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangCapNhatSP.aspx.cs" Inherits="WebBanDienThoai.TrangCapNhatSP" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1><asp:Label ID="lblThongBao" runat="server"></asp:Label></h1>
        <br />
        Tên Sản Phẩm : <asp:TextBox ID="txtTenSP" runat="server"></asp:TextBox>
        <br />
        Giá : <asp:TextBox ID="txtGia" runat="server"></asp:TextBox>
        <br />
        Hình Ảnh : <asp:FileUpload ID="fileHinhAnh" runat="server" />
        <br />
        Cấu Hình :
        <FCKeditorV2:FCKeditor ID="FCKCauHinh" runat="server" BasePath="~/fckeditor/" Height="400px" Width="800px">
            
        </FCKeditorV2:FCKeditor>
        <br />
        Mô Tả : <asp:TextBox ID="txtMoTa" runat="server"></asp:TextBox>
        <br />
        Chi tiết sản phẩm:
        <FCKeditorV2:FCKeditor ID="FCKChiTiet" runat="server" BasePath="~/fckeditor/" Height="400px" Width="800px">
            
        </FCKeditorV2:FCKeditor>    
        <br />
        <asp:Button ID="btnCapNhap" runat="server" Text="Cập Nhập" OnClick="btnCapNhap_Click" />
    </div>
    </form>
</body>
</html>
