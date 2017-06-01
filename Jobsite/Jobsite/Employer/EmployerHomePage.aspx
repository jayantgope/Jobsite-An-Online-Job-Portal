<%@ Page Title="" Language="C#" MasterPageFile="~/Employer/EmployerWithMenu.Master" AutoEventWireup="true" CodeBehind="EmployerHomePage.aspx.cs" Inherits="Jobsite.Employer.EmployerHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphLoginPanel" runat="server">
    <asp:Label ID="lblEmployerLogin" runat="server" Text="Employer Login:" CssClass="label" style="color: #FFFFFF"></asp:Label>
    <asp:TextBox ID="tbEmailAddress" runat="server" Placeholder="Email Address"></asp:TextBox>
    <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" Placeholder="Password"></asp:TextBox>
    <asp:Button ID="btLoginJobseeker" runat="server" Text="Login" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTabs" runat="server">
    <asp:Button ID="btJobseeker" runat="server" Text="Jobseeker" Width="48%" Style="color:Black; background:White"/>
    <asp:Button ID="btEmployer" runat="server" Text="Employer" Width="48%" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphMenus" runat="server">
    <ul>
        <li><a href="#" class="active">Home</a></li>
        <li><a href="#">Search Jobseekers</a></li>
        <li><a href="EmployerLogin.aspx">Employer Login</a></li>
        <li><a href="EmployerRegistration.aspx">Register</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphMainContents" runat="server">
</asp:Content>
