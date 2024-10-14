<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="dathangct.ascx.cs" Inherits="WebBanDienThoai.dathangct" %>
<div class="bg-gray-100"><h2> <asp:Label ID="lblTenDT" runat="server"></asp:Label></h2>
    <!-- Thân trang -->
    <div class="container-content">
        <!-- Tên sản phẩm -->
        <h1 class="product-title">
        Thông Tin Thanh Toán
        </h1>
        <div>
            Họ Tên :<asp:TextBox ID="txeHoTen" runat="server"></asp:TextBox>
            <br />
            Số điện thoại :<asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
            <br />
            Email :<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
            Địa chỉ :<asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>
            <br />
            Số lượng :<asp:TextBox ID="txtSoLuong" runat="server"></asp:TextBox>
        </div>
        <!-- Nội dung sản phẩm -->
        <div class="product-content">
            </div>
                <a class="purchase-buttons">
                    <asp:Button ID="btnMuaNgay" runat="server" Text="Mua Ngay" OnClick="btnMuaNgay_Click" style="margin-top: 0px" />
                </a>          
        </div>
    <!-- Javascript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

    <script src="js/product.js"></script>
</div>
<p>
    &nbsp;</p>
