<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="dathang.aspx.cs" Inherits="WebBanDienThoai.dathang" %>
<%@ Register src="dathangct.ascx" tagname="dathangct" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:dathangct ID="dathangct1" runat="server" />
</asp:Content>
