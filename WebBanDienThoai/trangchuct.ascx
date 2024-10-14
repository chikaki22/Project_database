<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="trangchuct.ascx.cs" Inherits="WebBanDienThoai.trangchuct" %>
<!-- Khuyến mãi hot -->
<section class="promotion-section bg-red-600">
    <h2>KHUYẾN MÃI HOT</h2>
    <div class="product-grid">
        <% for (int i = 0; i < listSPHot.Count; i++)
           { %>
        <div class="product-item">
            <a href='<%="chitietdienthoai.aspx?IdSanPham="+ listSPHot[i].ID_SANPHAM.ToString() %>'> <img alt="<%= listSPHot[i].TEN_SANPHAM %>" src="<%= listSPHot[i].ANH %>" width="200" height="300" /> </a>
            <h3><%= listSPHot[i].TEN_SANPHAM %></h3>
            <p class="price"><%= listSPHot[i].GIA %></p>
        </div>
        <% } %>
    </div>
</section>
        <!-- Sản phẩm mới -->
<section class="promotion-section bg-blue-200">
    <h2>SẢN PHẨM MỚI</h2>
    <div class="product-grid">
        <% for (int i = 0; i < listSPM.Count; i++)
           { %>
        <div class="product-item">
           <a href='<%="chitietdienthoai.aspx?IdSanPham="+ listSPM[i].ID_SANPHAM.ToString() %>'> <img alt="<%= listSPM[i].TEN_SANPHAM %>" src="<%= listSPM[i].ANH %>"
                width="200" height="300" /> </a>
            <h3><%= listSPM[i].TEN_SANPHAM %></h3>
            <p class="price"><%= listSPM[i].GIA %></p>
        </div>
        <% } %>
    </div>
</section>
<!-- Sản phẩm bán chạy -->
<section id="IPHONE" class="promotion-section bg-purple-200">
    <h2>iPhone</h2>
    <div class="product-grid">
        <% for (int i = 1; i < listIPHONE.Count; i++) 
           { %>
        <div class="product-item">
           <a href='<%="chitietdienthoai.aspx?IdSanPham="+ listIPHONE[i].ID_SANPHAM.ToString() %>'> <img alt="<%= listIPHONE[i].TEN_SANPHAM %>" src="<%= listIPHONE[i].ANH %>" 
                width="200" height="300" /> </a>
            <h3><%= listIPHONE[i].TEN_SANPHAM %></h3>
            <p class="price"><%= listIPHONE[i].GIA %></p>
        </div>
        <% } %>
    </div>
</section>

<section id="OPPO" class="promotion-section bg-purple-200">
    <h2>Oppo</h2>
    <div class="product-grid">
       <% for (int i = 1; i < listOPPO.Count; i++) 
          { %>
        <div class="product-item">
           <a href='<%="chitietdienthoai.aspx?IdSanPham="+ listOPPO[i].ID_SANPHAM.ToString() %>'> <img alt="<%= listOPPO[i].TEN_SANPHAM %>" src="<%= listOPPO[i].ANH %>"
                width="200" height="300" /> </a>
            <h3><%= listOPPO[i].TEN_SANPHAM %></h3>
            <p class="price"><%= listOPPO[i].GIA %></p>
        </div>
        <% } %>
        
    </div>
</section>

<section id="SAMSUNG"class="promotion-section bg-purple-200">
    <h2>Samsung</h2>
    <div class="product-grid">
       <% for (int i = 1; i < listSS.Count; i++) 
          { %>
        <div class="product-item">
          <a href='<%="chitietdienthoai.aspx?IdSanPham="+ listSS[i].ID_SANPHAM.ToString() %>'>  <img alt="<%= listSS[i].TEN_SANPHAM %>" src="<%= listSS[i].ANH %>"
                width="200" height="300" /> </a>
            <h3><%= listSS[i].TEN_SANPHAM %></h3>
            <p class="price"><%= listSS[i].GIA %></p>
        </div>
        <% } %>
        
    </div>
</section>

<section id="REALMI" class="promotion-section bg-purple-200">
    <h2>Realmi</h2>
    <div class="product-grid">
       <% for (int i = 1; i < listRM.Count; i++) 
          { %>
        <div class="product-item">
           <a href='<%="chitietdienthoai.aspx?IdSanPham="+ listRM[i].ID_SANPHAM.ToString() %>'> <img alt="<%= listRM[i].TEN_SANPHAM %>" src="<%= listRM[i].ANH %>"
                width="200" height="300" /> </a>
            <h3><%= listRM[i].TEN_SANPHAM %></h3>
            <p class="price"><%= listRM[i].GIA %></p>
        </div>
        <% } %>
        
    </div>
</section>

<section id="VIVO" class="promotion-section bg-purple-200">
    <h2>Vivo</h2>
    <div class="product-grid">
       <% for (int i = 1; i < listVV.Count; i++) 
          { %>
        <div class="product-item">
           <a href='<%="chitietdienthoai.aspx?IdSanPham="+ listVV[i].ID_SANPHAM.ToString() %>'> <img alt="<%= listVV[i].TEN_SANPHAM %>" src="<%= listVV[i].ANH %>"
                width="200" height="300" /> </a>
            <h3><%= listVV[i].TEN_SANPHAM %></h3>
            <p class="price"><%= listVV[i].GIA %></p>
        </div>
        <% } %>
        
    </div>
</section>

<section id="XIAOMI" class="promotion-section bg-purple-200">
    <h2>Xiaomi</h2>
    <div class="product-grid">
       <% for (int i = 1; i < listXM.Count; i++) 
          { %>
        <div class="product-item">
           <a href='<%="chitietdienthoai.aspx?IdSanPham="+ listXM[i].ID_SANPHAM.ToString() %>'> <img alt="<%= listXM[i].TEN_SANPHAM %>" src="<%= listXM[i].ANH %>"
                width="200" height="300" /> </a>
            <h3><%= listXM[i].TEN_SANPHAM %></h3>
            <p class="price"><%= listXM[i].GIA %></p>
        </div>
        <% } %>
        
    </div>
</section>

