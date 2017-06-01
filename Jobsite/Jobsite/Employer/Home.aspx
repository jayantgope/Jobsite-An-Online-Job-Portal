<%@ Page Title="Home" Language="C#" MasterPageFile="~/Employer/EmployerWithMenu.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Jobsite.Employer.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphLoginPanel" runat="server">
    <asp:Label ID="lblWelcomeText" runat="server" Text="Welcome jayantgope@yahoo.in" Style="border-right:2px solid #FFF;padding-right:2%; margin-left:200px" ></asp:Label>
    <asp:Button runat="server" Text="Logout" Style="margin-left:2%;"/>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTabs" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphMenus" runat="server">
    <ul>
        <li><a href="#" class="active">Home</a></li>
        <li><a href="#">Seach Jobseekers</a></li>
        <li><a href="#">Post Jobs</a></li>
        <li><a href="#">Delete Jobs</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphMainContents" runat="server">
</asp:Content>
