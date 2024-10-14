<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebBanDienThoai.home" %>
<%@ Register src="trangchuct.ascx" tagname="trangchuct" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:trangchuct ID="trangchuct1" runat="server" />
</asp:Content>
