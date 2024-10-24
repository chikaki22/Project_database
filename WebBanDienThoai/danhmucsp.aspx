<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="danhmucsp.aspx.cs" Inherits="WebBanDienThoai.danhmucsp" %>
<%@ Register src="danhmucspct.ascx" tagname="danhmucspct" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:danhmucspct ID="danhmucspct1" runat="server" />
</asp:Content>
