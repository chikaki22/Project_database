<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="timkiemsp.aspx.cs" Inherits="WebBanDienThoai.timkiemsp" %>
<%@ Register src="timkiemspct.ascx" tagname="timkiemspct" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:timkiemspct ID="timkiemspct1" runat="server" />
</asp:Content>
