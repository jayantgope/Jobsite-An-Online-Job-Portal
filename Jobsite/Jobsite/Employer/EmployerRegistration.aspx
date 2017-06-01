<%@ Page Title="Register" Language="C#" MasterPageFile="~/Employer/EmployerWithoutMenu.Master" AutoEventWireup="true" CodeBehind="EmployerRegistration.aspx.cs" Inherits="Jobsite.Employer.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphLoginPanel" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTabs" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphMainContents" runat="server">
    <div id="heading" style="height:60px">
        <asp:Label ID="lblHeading" runat="server" Text="Start hiring online for entry level position from colleges across India with a recruiters account of Jobsite.in. Please fill in the mandatory details in the form below to proceed."></asp:Label>
    </div>
    <div id="main_content">
        <br />
        <asp:Label ID="lblStar" runat="server" Text="*" CssClass="required" ></asp:Label>
        <asp:Label ID="lblMandatoryFields" runat="server" Text="Mandatory Fields"></asp:Label>
        <br />
        <br />
        <fieldset>
            <legend >Account Information</legend>
            <!-- Email ID-->
            <span class="labels">
                <asp:Label ID="lblEmailID" runat="server" Text="Enter Your Email ID* :" CssClass="style_label"></asp:Label>
                <asp:TextBox ID="tbEmailID" runat="server" Placeholder="Email ID" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmailID" runat="server" 
                    ErrorMessage="Please specify your email ID." 
                    CssClass="required_field_validator" ControlToValidate="tbEmailID"></asp:RequiredFieldValidator>
            </span>

             <!-- Create Password-->
            <span class="labels">
                <asp:Label ID="lblCreatePassword" runat="server" Text="Create a Password for Your Account* :" CssClass="style_label"></asp:Label>
                <asp:TextBox ID="tbCreatePassword" runat="server" Placeholder="Create Password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvCreatePassword" runat="server" 
                    ErrorMessage="Please specify a password." 
                    CssClass="required_field_validator" ControlToValidate="tbCreatePassword"></asp:RequiredFieldValidator>
            </span>

            <!-- Confirm Password-->
            <span class="labels">
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm the Password* :" CssClass="style_label"></asp:Label>
                <asp:TextBox ID="tbConfirmPassword" runat="server" Placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" 
                    ErrorMessage="Please specify confirm password." 
                    CssClass="required_field_validator" ControlToValidate="tbConfirmPassword"></asp:RequiredFieldValidator>
            </span>
        </fieldset>
        <br />
        <fieldset>
            <legend>Company/Recruiter Details</legend>
            <!-- Company Name-->
            <span class="labels">
                <asp:Label ID="lblCompanyName" runat="server" Text="Please Mention Company Name* :" CssClass="style_label" ></asp:Label>
                <asp:TextBox ID="tbCompanyName" runat="server" Placeholder="Company Name" Style="width:300px" ></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"  CssClass="required_field_validator" ErrorMessage="Please specify your company name." ControlToValidate="tbCompanyName">
                </asp:RequiredFieldValidator>
            </span>

            <!-- Contact Person-->
            <span class="labels">
                <asp:Label ID="lblContactPerson" runat="server" Text="Please Mention Contact Person Name* :" CssClass="style_label"></asp:Label>
                <asp:TextBox ID="tbContactPerson" runat="server" Placeholder="Contact Person" ></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"  CssClass="required_field_validator" ErrorMessage="Please specify the contact person name." 
                ControlToValidate="tbContactPerson"></asp:RequiredFieldValidator>
            </span>

            <!-- Company Type-->
            <span class="labels">
                <asp:Label ID="lblCompanyType" runat="server" Text="Please Select the Company Type* :" CssClass="style_label"></asp:Label>
                <asp:RadioButtonList runat="server" id="rblCompanyType">
                    <asp:ListItem>Company</asp:ListItem>
                    <asp:ListItem>Consultant</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator style="margin-left:320px" runat="server"  CssClass="required_field_validator" ErrorMessage="Please select the company type." 
                ControlToValidate="rblCompanyType"></asp:RequiredFieldValidator>
            </span>

            <!-- Industry Type -->
            <span class="labels">
                <asp:Label ID="lblIndustryType" runat="server" Text="Select Your Industry Type* :" CssClass="style_label"></asp:Label>
                <asp:DropDownList ID="ddlIndustryType" runat="server" style="width:370px">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>Accessories/Apparel/Fashion Design</asp:ListItem>
                    <asp:ListItem>Accounting/Consulting/Taxation</asp:ListItem>
                    <asp:ListItem>Advertising/Event Management/PR</asp:ListItem>
                    <asp:ListItem>Agriculture/Dairy Technology</asp:ListItem>
                    <asp:ListItem>Airlines/Hotel/Hospitality/Travel/Tourism/Restaurants</asp:ListItem>
                    <asp:ListItem>Architectural Services/ Interior Designing</asp:ListItem>
                    <asp:ListItem>Auto Ancillary/Automobiles/Components</asp:ListItem>
                    <asp:ListItem>Banking/Financial Services/Stockbroking/Securities</asp:ListItem>
                    <asp:ListItem>Biotechnology/Pharmaceutical/Clinical Research</asp:ListItem>
                    <asp:ListItem>Cement/Construction/Engineering/Metals/Steel/Iron</asp:ListItem>
                    <asp:ListItem>Chemicals/Petro Chemicals/Plastics</asp:ListItem>
                    <asp:ListItem>Consumer FMCG/Foods/Beverages</asp:ListItem>
                    <asp:ListItem>Consumer Goods - Durables</asp:ListItem>
                    <asp:ListItem>Courier/Freight/Transportation/Warehousing</asp:ListItem>
                    <asp:ListItem>CRM/ IT Enabled Services/BPO</asp:ListItem>
                    <asp:ListItem>Education/Training/Teaching</asp:ListItem>
                    <asp:ListItem>Employment Firms/Recruitment Services Firms</asp:ListItem>
                    <asp:ListItem>Computer Hardware/Networking</asp:ListItem>
                    <asp:ListItem>Others/Engg. Services/Service Providers</asp:ListItem>
                    <asp:ListItem>Software Services</asp:ListItem>
            </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvIndustryType" runat="server" 
                    ErrorMessage="Please specify your industry type." 
                    CssClass="required_field_validator" ControlToValidate="ddlIndustryType" InitialValue="--Select--"></asp:RequiredFieldValidator>
            </span>
        </fieldset>
        <br />

        <fieldset>
        <!-- Contact Information -->
            <legend>Contact Information</legend>
            <!-- Address Line 1 -->
            <span class="labels">
                <asp:Label ID="lblAddressLine1" runat="server" Text="Address Line 1* :" CssClass="style_label"></asp:Label>
                <asp:TextBox ID="tbAddressLine1" runat="server" Placeholder="Address Line 1" style="width:300px"></asp:TextBox>
                 <asp:RequiredFieldValidator runat="server"  CssClass="required_field_validator" ErrorMessage="Please specify the address." 
                ControlToValidate="tbAddressLine1"></asp:RequiredFieldValidator>
            </span>
            <!-- Address Line 2 -->
            <span class="labels">
                <asp:Label ID="lblAddressLine2" runat="server" Text="Address Line 2 :" CssClass="style_label"></asp:Label>
                <asp:TextBox ID="tbAddressLine2" runat="server" Placeholder="Address Line 2" style="width:300px"></asp:TextBox>
            </span>
            <!-- Address Line 3 -->
            <span class="labels">
                <asp:Label ID="lblAddressLine3" runat="server" Text="Address Line 3 :" CssClass="style_label"></asp:Label>
                <asp:TextBox ID="tbAddressLine3" runat="server" Placeholder="Address Line 3" style="width:300px"></asp:TextBox>
            </span>
            <asp:ScriptManager ID="MainScriptManager" runat="server" />
            <asp:UpdatePanel ID="pnlCities" runat="server">
            <ContentTemplate>
            <span class="labels">
                <asp:Label ID="lblState" runat="server" Text="Select Your State* :" CssClass="style_label"></asp:Label>
                <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlState_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvState" runat="server" 
                    ErrorMessage="Please select the state." 
                    CssClass="required_field_validator" ControlToValidate="ddlState" InitialValue="--Select--"></asp:RequiredFieldValidator>
            </span>
            <span class="labels">
                <asp:Label ID="lblCity" runat="server" Text="Select Your City* :" CssClass="style_label"></asp:Label>
                <asp:DropDownList ID="ddlCity" runat="server">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvCity" runat="server" 
                    ErrorMessage="Please specify the city." 
                    CssClass="required_field_validator" ControlToValidate="ddlCity" InitialValue="--Select--"></asp:RequiredFieldValidator>
            </span>
            </ContentTemplate>
            </asp:UpdatePanel>
            <span class="labels">
                <asp:Label ID="lblPincode" runat="server" Text="Please Specify the Pin Code* :" CssClass="style_label"></asp:Label>
                <asp:TextBox ID="tbPincode" runat="server" Placeholder="Pin Code"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"  CssClass="required_field_validator" ErrorMessage="Please specify the pincode." 
                ControlToValidate="tbPincode"></asp:RequiredFieldValidator>
            </span>
            <span class="labels">
                <asp:Label ID="lblContactNo" runat="server" Text="Please Mention the Contact No* :" CssClass="style_label"></asp:Label>
                <asp:TextBox ID="tbContactNo" runat="server" Placeholder="Contact No"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server"  CssClass="required_field_validator" ErrorMessage="Please specify the contact no." 
                ControlToValidate="tbContactNo"></asp:RequiredFieldValidator>
            </span>
        </fieldset>

        <br />
            <asp:Button ID="btnJoinJobsite" runat="server" Text="Join Jobsite.in" Style="width:180px" onclick="btnJoinJobsite_Click"/>
        </div>
</asp:Content>
