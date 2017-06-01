
<%@ Page Title="Login" Language="C#" MasterPageFile="~/Employer/EmployerWithMenu.Master" AutoEventWireup="true" CodeBehind="EmployerLogin.aspx.cs" Inherits="Jobsite.Employer.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphLoginPanel" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTabs" runat="server">
    <asp:Button ID="btJobseeker" runat="server" Text="Jobseeker" Width="48%" Style="color:Black; background:White"/>
    <asp:Button ID="btEmployer" runat="server" Text="Employer" Width="48%" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphMenus" runat="server">
    <ul>
        <li><a href="EmployerHomePage.aspx" >Home</a></li>
        <li><a href="#">Search Jobseekers</a></li>
        <li><a href="#" class="active">Employer Login</a></li>
        <li><a href="EmployerRegistration.aspx">Register</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphMainContents" runat="server">
<div id="search_header">
        <div id="heading" Style="text-align:left; margin-top:0px; height:35px;">
            <asp:Label ID="lblHeading" runat="server" Text="Jobseeker Login" ></asp:Label>
        </div>
        <span class="labels" style="margin-left:28%; margin-top:15px;">
            <asp:Label ID="lblEmailAddress" runat="server" Text="Email Address:" CssClass="style_label" Style="width:100px;"></asp:Label>
            <asp:TextBox ID="tbEmailAddress" runat="server" Placeholder="Email Address" Style="width:200px"></asp:TextBox>
        </span>
        <span class="labels" style="margin-left:28%; margin-top:15px;">
            <asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="style_label" Style="width:100px;"></asp:Label>
            <asp:TextBox ID="tbPassword" runat="server" Placeholder="Password" Style="width:200px" TextMode="password"></asp:TextBox>
        </span>
        <span class="labels" style="margin-left:58%; margin-top:5px;">
            <asp:Button ID="btLogin" runat="server" Text="Login" style="width:80px; height:30px" />
        </span>
    </div>
    <div id="register_with_us">
        <span class="labels">
            <asp:Label ID="lblGetJob" runat="server" Text="Get Job on Jobsite.in " CssClass="style_label" Style="width:auto; font-size:16px; font-weight:700; margin-left:20%; margin-top:3%"></asp:Label>
        </span>
        <span class="labels">
            <asp:BulletedList runat="server" >
                <asp:ListItem style="height:25px">Post Jobs</asp:ListItem>
                <asp:ListItem style="height:25px">Powerful Database Search</asp:ListItem>
                <asp:ListItem style="height:25px">Search Job Seekers Using Skill Sets</asp:ListItem>
                <asp:ListItem style="height:25px">And its all for Free</asp:ListItem>
            </asp:BulletedList>
        </span>
        <span class="labels">
            <asp:Label ID="lblNotAMember" runat="server" Text="Not a Member Yet? " CssClass="style_label" Style="margin-left:20px;"></asp:Label>
            <asp:Button ID="btRegisterNow" runat="server" Text="Register Now" 
            style="width:100px; border-radius:5px; height:30px" 
            onclick="btRegisterNow_Click"/>
        </span>
        
    </div>
    <div id="job_tabs" style="height:230px"></div>
</asp:Content>
