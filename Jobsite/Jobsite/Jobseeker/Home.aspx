<%@ Page Title="Home" Language="C#" MasterPageFile="~/Jobseeker/JobseekerWithMenu.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Jobsite.Jobseeker.WebForm5" %>
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
        <li><a href="SearchJob.aspx">Search Jobs</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphMainContents" runat="server">
    <div id="search_header">
        <div id="heading" Style="text-align:left; margin-top:0px; height:35px;">
            <asp:Label ID="lblHeading" runat="server" Text="Search Jobs" ></asp:Label>
        </div>
        <span class="labels">
            <asp:Label ID="lblSelectCourse" runat="server" Text="Select Course" CssClass="style_label" Style="width:200px;"></asp:Label>
            <asp:Label ID="lblEnterLocation" runat="server" Text="Enter Location" CssClass="style_label" Style="width:180px;"></asp:Label>
            <asp:Label ID="lblSkills" runat="server" Text="Skills" CssClass="style_label" Style="width:180px;"></asp:Label>
        </span>
        <span class="labels">
            <asp:DropDownList ID="ddlCourseName" runat="server" AutoPostBack="True" Style="width:200px">
            </asp:DropDownList>
            <asp:TextBox ID="tbLocation" runat="server" 
            Placeholder="eg. Delhi, Mumbai"></asp:TextBox>
            <asp:TextBox ID="tbKeywords" runat="server" 
            Placeholder="eg. Java, C++, C" Style="width:250px"></asp:TextBox>
            <asp:Button ID="btSearchJobs" runat="server" Text="Search" Style="width:80px; height:30px" />
        </span>
    </div>
    <div id="register_with_us">
        <span class="labels">
            <asp:Button ID="btUpdateResumeDetails" runat="server" Text="Update Your Resume Details" 
            Style="width:80%; margin-left:7%; margin-top:10%; height:50px; font-size:16px;" 
             />
        </span>
        <span class="labels" Style="text-align:center">
            <asp:Label ID="lblOr" runat="server" Text="-OR-" CssClass="style_label" Style="width:auto; margin-left:40%; margin-top:5%; text-align:center"></asp:Label>
        </span>
        <span class="labels">
            <asp:Button ID="btUploadYourResume" runat="server" Text="Upload Your Resume" Style="width:80%; margin-left:7%; margin-top:15px; height:50px; font-size:16px;" />
        </span>
    </div>
    <div id="job_tabs" style="height:230px"></div>
</asp:Content>


