<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="dtchitietct.ascx.cs" Inherits="WebBanDienThoai.dtchitietct" %>

<div class="bg-gray-100">
    <!-- Thân trang -->
    <div class="container-content">
        <!-- Tên sản phẩm -->
        <h1 class="product-title">

            <%=ifDienThoai.TEN_SANPHAM %> | Mới Fullbox
        </h1>
        <!-- Nội dung sản phẩm -->
        <div class="product-content">
            <!-- Ảnh và màu sản phẩm -->
            <div class="product-images">
                <div class="main-image">
                    <img src='<%="./img/products/"+ ifDienThoai.ANH%>' alt="Samsung Galaxy" />
                </div>
            </div>
            <!-- Lựa chọn thanh toán -->
            <div class="product-details">
                <div class="price"> <a><%= ifDienThoai.GIA.ToString()%></a></div>
                <div class="prepayment">Liên hệ tư vấn: 0365668204</div>
                <div class="options">
                    <div class="option-label">Dung lượng</div>
                    <div class="capacity-options">
                        <button>8GB | 128GB</button>
                        <button>12GB | 256GB</button>
                        <button>12GB | 512GB</button>
                    </div>
                </div>
                <div class="options">
                    <div class="option-label">Màu sắc</div>
                    <div class="product-thumbnails">
                        <img src="img/products/samsung-galaxy-s24-ultra-grey-thumbnew-600x600.jpg" alt="Image 1"
                             data-image-src="img/products/samsung-galaxy-s24-ultra-grey-thumbnew-600x600.jpg" class="thumbnail-active">
                        <img src="img/products/samsung-galaxy-s24-ultra-den-1.jpg" alt="Image 2"
                             data-image-src="img/products/samsung-galaxy-s24-ultra-den-1.jpg">
                        <img src="img/products/samsung-galaxy-s24-ultra-tim-1.jpg" alt="Image 3"
                             data-image-src="img/products/samsung-galaxy-s24-ultra-tim-1.jpg">
                        <img src="img/products/samsung-galaxy-s24-ultra-vang-1.jpg" alt="Image 4"
                             data-image-src="img/products/samsung-galaxy-s24-ultra-vang-1.jpg">
                        <img src="img/products/samsung-galaxy-s24-ultra-xam-1.jpg" alt="Image 5"
                             data-image-src="img/products/samsung-galaxy-s24-ultra-xam-1.jpg">
                    </div>
                </div>
                <div class="purchase-buttons">
                <button >
                <a href='<%="dathang.aspx?IdSanPham=" + ifDienThoai.ID_SANPHAM.ToString() %>' style="text-decoration:none">
                    Mua Ngay
                </a>
                </button>
                    </div>
                <div class="hotline">
                    Hotline đặt mua: <span>0905.988.900</span> ( 8:30 - 21:00 )
                </div>
            </div>
        </div>
        <!-- Thông tin sản phẩm -->
        <div class="product-infor">
            <!-- Đánh giá sản phẩm -->
            <div class="product-review">
                <h2>Đánh giá chi tiết <%=ifDienThoai.TEN_SANPHAM %></h2>
                <p>
                    <%=HttpUtility.HtmlDecode(ifDienThoai.ChiTietSanPham) %>
                </p>
            </div>
            <!-- Thông số -->
            <div class="product-specs">
                <h2>Thông số kỹ thuật </h2>
                
                    <%=HttpUtility.HtmlDecode(ifDienThoai.CAUHINH) %>
                
                <button>Xem cấu hình chi tiết</button>
            </div>
        </div>
    </div>
    <!-- Javascript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

    <script src="js/product.js"></script>
</div>