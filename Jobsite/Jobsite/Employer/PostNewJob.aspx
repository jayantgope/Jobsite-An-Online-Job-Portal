<%@ Page Title="" Language="C#" MasterPageFile="~/Employer/EmployerWithMenu.Master" AutoEventWireup="true" CodeBehind="PostNewJob.aspx.cs" Inherits="Jobsite.Employer.WebForm4" %>
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
        <li><a href="#">Home</a></li>
        <li><a href="#">Seach Jobseekers</a></li>
        <li><a href="#" class="active">Post New Job</a></li>
        <li><a href="#">Delete Jobs</a></li>
    </ul>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="cphMainContents" runat="server">
    <div id="search_header" style="height:auto">
        <div id="heading" Style="text-align:left; margin-top:0px; height:35px; margin-bottom:20px">
            <asp:Label ID="lblHeading" runat="server" Text="Post New Job" ></asp:Label>
        </div>
        <asp:ScriptManager ID="MainScriptManager" runat="server" />
        <asp:UpdatePanel ID="pnlJobCategory" runat="server">
        <ContentTemplate>
        <span class="labels">
            <asp:Label ID="lblJobCategory" runat="server" Text="Job Category* :" CssClass="style_label" Style="width:170px;"></asp:Label>
            <asp:DropDownList ID="ddlJobCategory" runat="server" AutoPostBack="True" 
                Style="width:200px" 
                onselectedindexchanged="ddlJobCategory_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:DropDownList ID="ddlJobCategorySpecific" runat="server" Style="width:200px">
            </asp:DropDownList>
        </span>
        <span class="labels">
            <asp:RequiredFieldValidator ID="rfvJobCategory" runat="server" 
                    ErrorMessage="Please select job category." style="margin-left:200px;"
                    CssClass="required_field_validator" ControlToValidate="ddlJobCategory" InitialValue="--Select--"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="rfvFunctionalArea" runat="server" style="margin-left:50px"
                    ErrorMessage="Please select functional area." 
                    CssClass="required_field_validator" ControlToValidate="ddlJobCategorySpecific" InitialValue="--Select Functional Area--"></asp:RequiredFieldValidator>
        </span>
        </ContentTemplate>
        </asp:UpdatePanel>

        <asp:UpdatePanel ID="pnlJobLocation" runat="server">
        <ContentTemplate>
        <span class="labels" style="margin-top:3px">
            <asp:Label ID="lblJobLocation" runat="server" Text="Job Location* :" CssClass="style_label" Style="width:170px;"></asp:Label>
            <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="True" 
                Style="width:200px" onselectedindexchanged="ddlState_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:DropDownList ID="ddlCity" runat="server"
                Style="width:200px">
            </asp:DropDownList>
        </span>
        <span class="labels">
            <asp:RequiredFieldValidator ID="rfvState" runat="server" 
                    ErrorMessage="Please select job location." style="margin-left:200px;"
                    CssClass="required_field_validator" ControlToValidate="ddlState" InitialValue="--Select State--"></asp:RequiredFieldValidator>
      
        </span>
        </ContentTemplate>
        </asp:UpdatePanel>
        <span class="labels" style="margin-top:3px">
            <asp:Label ID="lblSkillsRequired" runat="server" Text="Skills Required* :" CssClass="style_label" Style="width:170px; margin-bottom:20px"></asp:Label>
            <asp:TextBox ID="tbSkillsRequired" runat="server" 
            Placeholder="eg. Java, Matlab, Accounting" Style="width:300px;"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvSkills" runat="server" 
                    ErrorMessage="Please specify the skills."
                    CssClass="required_field_validator" ControlToValidate="tbSkillsRequired"></asp:RequiredFieldValidator>
        </span>

        <span class="labels">
            <asp:Label ID="lblJobTitle" runat="server" Text="Job Title* :" CssClass="style_label" Style="width:170px; margin-bottom:20px"></asp:Label>
            <asp:TextBox ID="tbTitle" runat="server" 
            Placeholder="eg. Android Developer" Style="width:200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvJobTitle" runat="server" 
                    ErrorMessage="Please specify job title."
                    CssClass="required_field_validator" ControlToValidate="tbTitle"></asp:RequiredFieldValidator>
        </span>

        <span class="labels">
            <asp:Label ID="lblDescription" runat="server" Text="Description* :" CssClass="style_label" Style="width:170px"></asp:Label>
            <asp:TextBox ID="tbDescription" runat="server" 
            Placeholder="eg. Passionate for coding and programming on Android/java/dotnet. Passionate to work for sales and marketing startup under a big group." Style="width:300px;" TextMode="multiline" Columns="100" Rows="6"></asp:TextBox>
        </span>
        <span class="labels">
            <asp:RequiredFieldValidator ID="rfvDescription" runat="server" style="margin-left:200px"
                    ErrorMessage="Please specify description."
                    CssClass="required_field_validator" ControlToValidate="tbDescription"></asp:RequiredFieldValidator>
        </span>

        <span class="labels" style="margin-top:3px">
            <asp:Label ID="lblSalary" runat="server" Text="Salary :" CssClass="style_label" Style="width:170px; margin-bottom:20px"></asp:Label>
            <asp:TextBox ID="tbSalary" runat="server" 
            Placeholder="Salary (in Rs.)" Style="width:200px"></asp:TextBox>
        </span>
        <span class="labels">
            <asp:Button ID="btSearchJobs" runat="server" Text="Post Job" 
            Style="width:200px; height:30px; margin-bottom:15px; margin-left:24%" 
            onclick="btSearchJobs_Click" />
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
            <asp:Button ID="btUploadYourResume" runat="server" Text="Upload Your Resume" Style="width:80%; margin-left:7%; margin-top:15px;height:50px; font-size:16px;" />
        </span>
    </div>
    <div id="job_tabs"></div>
</asp:Content>
