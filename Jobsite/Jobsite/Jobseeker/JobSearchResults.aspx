<%@ Page Title="Search Results" Language="C#" MasterPageFile="~/Jobseeker/JobseekerWithMenu.Master" AutoEventWireup="true" CodeBehind="JobSearchResults.aspx.cs" Inherits="Jobsite.Jobseeker.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphLoginPanel" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTabs" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphMenus" runat="server">
    <ul>
        <li><a href="#" >Home</a></li>
        <li><a href="#" class="active">Search Jobs</a></li>
        <li><a href="JobseekerLogin.aspx">Update Resume</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphMainContents" runat="server">
    <div id="search_header" style="text-align:center; width:100%" >
        <div id="heading" Style="text-align:left; margin-top:0px; height:35px;">
            <asp:Label ID="lblHeading" runat="server" Text="Search Jobs" ></asp:Label>
        </div>
        <span class="labels" style="margin-left:190px; margin-top:10px">
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
            <asp:Button ID="btSearchJobs" runat="server" Text="Search" 
            Style="width:80px; height:30px;" onclick="btSearchJobs_Click" />
        </span>
        <asp:DataList runat="server" id="dlJobs">
            <HeaderTemplate>
                <table class="style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" 
                                Text='<%# DataBinder.Eval(Container.DataItem,"title").ToString() %>'></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </HeaderTemplate>

            <ItemTemplate>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </ItemTemplate>

        </asp:DataList>
    </div>
</asp:Content>
