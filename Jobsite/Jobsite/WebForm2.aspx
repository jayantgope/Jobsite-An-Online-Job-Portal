<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Jobsite.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>UpdatePanel</title>
</head>
<body>
    <form id="form2" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:UpdatePanel runat="server" id="UpdatePanel" updatemode="Conditional">
        <Triggers>
            <asp:AsyncPostBackTrigger controlid="UpdateButton2" eventname="Click" />
        </Triggers>
            <ContentTemplate>
                <asp:Label runat="server" id="DateTimeLabel1" />
                <asp:Button runat="server" id="UpdateButton1" onclick="UpdateButton_Click" text="Update" />               
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:UpdatePanel runat="server" id="UpdatePanel1" updatemode="Conditional">           
            <ContentTemplate>
                <asp:Label runat="server" id="DateTimeLabel2" />
                <asp:Button runat="server" id="UpdateButton2" onclick="UpdateButton_Click" text="Update" />
            </ContentTemplate>
        </asp:UpdatePanel>
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>Select</asp:ListItem>
            <asp:ListItem Value="1">One</asp:ListItem>
            <asp:ListItem Value="2">Two</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
