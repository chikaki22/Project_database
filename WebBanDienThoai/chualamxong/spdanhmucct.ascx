<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="spdanhmucct.ascx.cs" Inherits="WebBanDienThoai.spdanhmucct" %>
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
        <div class="product-item">
            <img alt="SONY Xperia 1 VI" src="img/products/samsung-galaxy-a05-black-thumbnew-600x600.jpg"
                width="200" height="300" />
            <h3>SONY Xperia 1 VI ( Mark 6 ) (12GB | 512GB ) Dual mới fullbox</h3>
            <p class="price">27,990,000₫</p>
        </div>
        <div class="product-item">
            <img alt="Google Pixel 7 Pro" src="img/products/samsung-galaxy-s24-ultra-grey-thumbnew-600x600.jpg"
                width="200" height="300" />
            <h3>Google Pixel 7 Pro Likenew Fullbox</h3>
            <p class="price">Liên hệ</p>
        </div>
        <div class="product-item">
            <img alt="SONY Xperia 1 VI" src="img/products/samsung-galaxy-a05-black-thumbnew-600x600.jpg"
                width="200" height="300" />
            <h3>SONY Xperia 1 VI ( Mark 6 ) (12GB | 512GB ) Dual mới fullbox</h3>
            <p class="price">27,990,000₫</p>
        </div>
        <div class="product-item">
            <img alt="Google Pixel 7 Pro" src="img/products/samsung-galaxy-s24-ultra-grey-thumbnew-600x600.jpg"
                width="200" height="300" />
            <h3>Google Pixel 7 Pro Likenew Fullbox</h3>
            <p class="price">Liên hệ</p>
        </div>
        <div class="product-item">
            <img alt="SONY Xperia 1 VI" src="img/products/samsung-galaxy-a05-black-thumbnew-600x600.jpg"
                width="200" height="300" />
            <h3>SONY Xperia 1 VI ( Mark 6 ) (12GB | 512GB ) Dual mới fullbox</h3>
            <p class="price">27,990,000₫</p>
        </div>
    </div>
</section>
<!-- Sản phẩm bán chạy -->
<section class="promotion-section bg-purple-200">
    <h2>iPhone</h2>
    <div class="product-grid">
        <% for (int i = 1; i < listIPHONE.Count; i++) 
           { %>
        <div class="product-item">
            <img alt="<%= listIPHONE[i].TEN_SANPHAM %>" src="<%= listIPHONE[i].ANH %>"
                width="200" height="300" />
            <h3><%= listIPHONE[i].TEN_SANPHAM %></h3>
            <p class="price"><%= listIPHONE[i].GIA %></p>
        </div>
        <% } %>
    </div>
</section>

<section class="promotion-section bg-purple-200">
    <h2>Oppo</h2>
    <div class="product-grid">
       <% for (int i = 1; i < listOPPO.Count; i++) 
          { %>
        <div class="product-item">
            <img alt="<%= listOPPO[i].TEN_SANPHAM %>" src="<%= listOPPO[i].ANH %>"
                width="200" height="300" />
            <h3><%= listOPPO[i].TEN_SANPHAM %></h3>
            <p class="price"><%= listOPPO[i].GIA %></p>
        </div>
        <% } %>
        
    </div>
</section>

<section class="promotion-section bg-purple-200">
    <h2>Samsung</h2>
    <div class="product-grid">
       <% for (int i = 1; i < listSS.Count; i++) 
          { %>
        <div class="product-item">
            <img alt="<%= listSS[i].TEN_SANPHAM %>" src="<%= listSS[i].ANH %>"
                width="200" height="300" />
            <h3><%= listSS[i].TEN_SANPHAM %></h3>
            <p class="price"><%= listSS[i].GIA %></p>
        </div>
        <% } %>
        
    </div>
</section>

<section class="promotion-section bg-purple-200">
    <h2>Realmi</h2>
    <div class="product-grid">
       <% for (int i = 1; i < listRM.Count; i++) 
          { %>
        <div class="product-item">
            <img alt="<%= listRM[i].TEN_SANPHAM %>" src="<%= listRM[i].ANH %>"
                width="200" height="300" />
            <h3><%= listRM[i].TEN_SANPHAM %></h3>
            <p class="price"><%= listRM[i].GIA %></p>
        </div>
        <% } %>
        
    </div>
</section>

<section class="promotion-section bg-purple-200">
    <h2>Vivo</h2>
    <div class="product-grid">
       <% for (int i = 1; i < listVV.Count; i++) 
          { %>
        <div class="product-item">
            <img alt="<%= listVV[i].TEN_SANPHAM %>" src="<%= listVV[i].ANH %>"
                width="200" height="300" />
            <h3><%= listVV[i].TEN_SANPHAM %></h3>
            <p class="price"><%= listVV[i].GIA %></p>
        </div>
        <% } %>
        
    </div>
</section>

<section class="promotion-section bg-purple-200">
    <h2>Xiaomi</h2>
    <div class="product-grid">
       <% for (int i = 1; i < listXM.Count; i++) 
          { %>
        <div class="product-item">
            <img alt="<%= listXM[i].TEN_SANPHAM %>" src="<%= listXM[i].ANH %>"
                width="200" height="300" />
            <h3><%= listXM[i].TEN_SANPHAM %></h3>
            <p class="price"><%= listXM[i].GIA %></p>
        </div>
        <% } %>
        
    </div>
</section>
