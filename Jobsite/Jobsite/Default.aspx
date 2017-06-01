<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Jobsite.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>
    </title>
    <link href="css/styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="container">
        <div id="header">
            <div id="login_panel">
                <asp:Label ID="lblJobseekrLogin" runat="server" Text="Jobseeker Login:" CssClass="label" style="color: #FFFFFF"></asp:Label>
                <asp:TextBox ID="tbEmailAddress" runat="server" Placeholder="Email Address"></asp:TextBox>
                <asp:TextBox ID="tbPassword" runat="server" TextMode="Password" Placeholder="Password"></asp:TextBox>
                <asp:Button ID="btLoginJobseeker" runat="server" Text="Login" />
            </div>
            <div id="logo">
                <asp:Image ID="Image1" runat="server" Height="100%" ImageUrl="~/images/Logo.png" />
            </div>
            <div id="tabs">
                <asp:Button ID="btJobseeker" runat="server" Text="Jobseeker" Width="48%" 
                    onclick="btJobseeker_Click" Style="color:Black; background:#FFF" />
                <asp:Button ID="btEmployer" runat="server" Text="Employer" Width="48%" />
            </div>
        </div>
        <div id="menu">
            <ul>
                <li><a href="default.asp">Home</a></li>
                <li><a href="news.asp">News</a></li>
                <li><a href="contact.asp">Contact</a></li>
                <li><a href="about.asp">About</a></li>
            </ul>
        </div>
        <div id="search_register">
            <div id="search_header">Content for  id "search_header" Goes Here</div>
            <div id="register_with_us">Content for  id "register_with_us" Goes Here</div>
        </div>
        <div id="job_tabs">Content for  id "job_tabs" Goes Here</div>
        <div id="job_categories_panel">Content for  id "job_categories_panel" Goes Here</div>
        <div id="footer">Content for  id "footer" Goes Here</div>
        </div>
    </form>
</body>
</html>
