<%@ Page Title="Register on Jobsite.in" Language="C#" MasterPageFile="~/Jobseeker/JobseekerWithoutMenu.Master" AutoEventWireup="true" CodeBehind="JobseekerRegistration.aspx.cs" Inherits="Jobsite.Jobseeker.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphTabs" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphMainContent" runat="server">
    <div id="heading">
        <asp:Label ID="lblHeading" runat="server" Text="Become a Member of Jobsite.in and find the right job. Create your Profile now, Free!"></asp:Label>
    </div>
    <div id="main_content">
        <asp:Label ID="lblStar" runat="server" Text="*" CssClass="required" ></asp:Label>
        <asp:Label ID="lblMandatoryFields" runat="server" Text="Mandatory Fields"></asp:Label>
        <br />
        <br />
        <fieldset>
            <legend >Create Login Details</legend>
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
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Create the Password* :" CssClass="style_label"></asp:Label>
                <asp:TextBox ID="tbConfirmPassword" runat="server" Placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" 
                    ErrorMessage="Please specify confirm password." 
                    CssClass="required_field_validator" ControlToValidate="tbConfirmPassword"></asp:RequiredFieldValidator>
            </span>
        </fieldset>
        <br />
        <fieldset>
            <legend>Your Contact Information</legend>
            <!-- Full Name-->
            <span class="labels">
                <asp:Label ID="lblFullName" runat="server" Text="Please Mention Your Full Name:" CssClass="style_label"></asp:Label>
                <asp:TextBox ID="tbFirstName" runat="server" Placeholder="First" ></asp:TextBox>
                <asp:TextBox ID="tbMiddleName" runat="server" Placeholder="Middle" ></asp:TextBox>
                <asp:TextBox ID="tbLastName" runat="server" Placeholder="Last" ></asp:TextBox>
            </span>

            <!-- Current Location-->
            <span class="labels">
                <asp:Label ID="lblCurrentLocation" runat="server" Text="Where are you Currently Located* :" CssClass="style_label"></asp:Label>
                <asp:DropDownList ID="ddlCurrentLocation" runat="server">
            </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvCurrentLocation" runat="server" 
                    ErrorMessage="Please specify your current location." 
                    CssClass="required_field_validator" ControlToValidate="ddlCurrentLocation" InitialValue="--Select--"></asp:RequiredFieldValidator>
            </span>

             <!-- Mobile Number -->
            <span class="labels">
                <asp:Label ID="lblMobileNumber" runat="server" Text="Enter Your Mobile Number* :" CssClass="style_label"></asp:Label>
                <asp:TextBox ID="tbMobileNumber" runat="server" Placeholder="Mobile No."></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMobileNumber" runat="server" 
                    ErrorMessage="Please specify your mobile number." 
                    CssClass="required_field_validator" ControlToValidate="tbMobileNumber"></asp:RequiredFieldValidator>
            </span>
        </fieldset>
        <br />
        <fieldset>
            <legend>Your Current Employment Details</legend>
            <!-- Work Experience-->
            <asp:ScriptManager ID="MainScriptManager" runat="server" />
            <asp:UpdatePanel ID="pnlWorkExperience" runat="server">
            <ContentTemplate>
            <span class="labels">
                <asp:Label ID="lblExperience" runat="server" Text="How much work experience do you have?* :" CssClass="style_label"></asp:Label>
                <asp:DropDownList ID="ddlExperienceInYears" runat="server" Width="100px" 
                AutoPostBack="True" 
                onselectedindexchanged="ddlExperienceInYears_SelectedIndexChanged">
                    <asp:ListItem Value="--Select--">--Select--</asp:ListItem>
                    <asp:ListItem Value="Fresher">Fresher</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                    <asp:ListItem>13</asp:ListItem>
                    <asp:ListItem>14</asp:ListItem>
                    <asp:ListItem>15</asp:ListItem>
                    <asp:ListItem>16</asp:ListItem>
                    <asp:ListItem>17</asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>
                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem>21</asp:ListItem>
                    <asp:ListItem>22</asp:ListItem>
                    <asp:ListItem>23</asp:ListItem>
                    <asp:ListItem>24</asp:ListItem>
                    <asp:ListItem>25</asp:ListItem>
                    <asp:ListItem>25+</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="lblYears" runat="server" Text="Years"></asp:Label>
                &nbsp;&nbsp;
                <asp:DropDownList ID="ddlExperienceInMonths" runat="server" Width="100px" 
                Visible="False">
                    <asp:ListItem>--Select--</asp:ListItem>
                    <asp:ListItem>0</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                </asp:DropDownList>
                <asp:Label ID="lblMonths" runat="server" Text="Months" Visible="False"></asp:Label>
                  <asp:RequiredFieldValidator ID="rfvWorkExperienceMonths" runat="server" ControlToValidate="ddlExperienceInMonths"
                    InitialValue="--Select--" ErrorMessage="Please select the months." CssClass="required_field_validator"></asp:RequiredFieldValidator>
                <br />
                <asp:RequiredFieldValidator ID="rfvWorkExperienceYears" runat="server" ControlToValidate="ddlExperienceInYears"
                    InitialValue="--Select--" ErrorMessage="Please select your total experience." CssClass="required_field_validator"></asp:RequiredFieldValidator>
               
            </span>
            
             <!-- Designation -->
            <span class="labels">
                <asp:Label ID="lblDesignation" runat="server" Text="Designation* :" 
                    CssClass="style_label" Visible="False"></asp:Label>
                <asp:TextBox ID="tbDesignation" runat="server" Placeholder="Designation" 
                    Visible="False"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDesignation" runat="server" 
                    ErrorMessage="Please specify your designation." 
                    CssClass="required_field_validator" ControlToValidate="tbDesignation"></asp:RequiredFieldValidator>
            </span>
            </ContentTemplate>
            </asp:UpdatePanel>

            <!-- Key Skills -->
            <span class="labels">
                <asp:Label ID="lblKeySkills" runat="server" Text="What are Your Key Skills?* :" CssClass="style_label"></asp:Label>
                <asp:TextBox ID="tbKeySkills" runat="server" Placeholder="Please enter you areas of expertise/specialization." Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvKeySkills" runat="server" 
                    ErrorMessage="Please specify your key skills." 
                    CssClass="required_field_validator" ControlToValidate="tbKeySkills"></asp:RequiredFieldValidator>
            </span>
            </fieldset>
            <br />

            <fieldset>
                <legend>Upload Your Detailed Resume</legend>
                <!-- Upload Resume-->
                <span class="labels">
                    <asp:Label ID="lblUploadResume" runat="server" Text="Upload your Resume Document :" CssClass="style_label"></asp:Label>
                    <asp:FileUpload ID="fuResume" runat="server" CssClass="upload_resume"/>
                </span>
            </fieldset>
            <br />
            <asp:Button ID="btnJoinJobsite" runat="server" Text="Join Jobsite.in" 
            CssClass="orange_button" onclick="btnJoinJobsite_Click"/>
    </div>
</asp:Content>
