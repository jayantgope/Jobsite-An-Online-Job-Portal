<%@ Page Title="Resume Manager" Language="C#" MasterPageFile="~/Jobseeker/JobseekerWithoutMenu.Master" AutoEventWireup="true" CodeBehind="ResumeManager.aspx.cs" Inherits="Jobsite.Jobseeker.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cphLoginPanel" runat="server">
    <div id="login_panel_menus" style="margin-right:5%; text-align:right;">
        <asp:Label ID="lblWelcomeText" runat="server" Text="Welcome jayantgope@yahoo.in" Style="border-right:2px solid #FFF;padding-right:2%" ></asp:Label>
        <asp:Button runat="server" Text="Logout" Style="margin-left:2%;"/>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cphTabs" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="cphMainContent" runat="server">
    <div id="status_message">
        <asp:Label ID="lblStatusMessage" runat="server" Text="Welcome"></asp:Label>
    </div>
    <div id="heading" style="text-align:justify; height:50px; font-size:18px">
        <asp:Label ID="lblHeading" runat="server" Text="Now, to be eligible for job opportunities, please provide the information below.
Recruiters will not consider your profile complete until you fill this page."></asp:Label>
    </div>
    <div id="main_content">
        <asp:Label ID="lblStar" runat="server" Text="*" CssClass="required"></asp:Label>
        <asp:Label ID="lblMandatoryFields" runat="server" Text="Mandatory Fields"></asp:Label>
        
        <br />
        <br />
        
        <fieldset>
            <legend>Your Degree</legend>
            <!-- Basic Education-->
            <asp:ScriptManager ID="MainScriptManager" runat="server" />
            <asp:UpdatePanel ID="pnlCourseName" runat="server">
            <ContentTemplate>
                <span class="labels">
                    <asp:Label ID="lblCourseName" runat="server" Text="Course Name* :" CssClass="style_label"></asp:Label>
                    <asp:DropDownList ID="ddlCourseName" runat="server" 
                onselectedindexchanged="ddlCourseName_SelectedIndexChanged" 
                    AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:TextBox ID="tbOtherCourseName" runat="server" 
                    Placeholder="Basic Course" Visible="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvOtherCourseName" runat="server" 
                        ErrorMessage="Please type your basic course in the box." 
                        CssClass="required_field_validator" ControlToValidate="tbOtherCourseName"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="rfvCourseName" runat="server" 
                        ErrorMessage="Please select your basic course." 
                        CssClass="required_field_validator" ControlToValidate="ddlCourseName" InitialValue="--Select--" ValidationGroup="a"></asp:RequiredFieldValidator>
                </span>
                
                <!--Course Specialization -->
                <span class="labels">
                    <asp:Label ID="lblSpecialization" runat="server" Text="Specialization* :" CssClass="style_label"></asp:Label>
                    <asp:DropDownList ID="ddlSpecialization" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddlSpecialization_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:TextBox ID="tbOtherSpecialization" runat="server" 
                    Placeholder="Specialization" Visible="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvOtherSpecialization" runat="server" 
                        ErrorMessage="Please type your specialization in the box." 
                        CssClass="required_field_validator" ControlToValidate="tbOtherSpecialization"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="rfvSpecialization" runat="server" 
                        ErrorMessage="Please select your specialization." 
                        CssClass="required_field_validator" ControlToValidate="ddlSpecialization" InitialValue="--Select--"></asp:RequiredFieldValidator>
                </span>
                </ContentTemplate>
            </asp:UpdatePanel>

            <!-- Institute/University Name -->
            <span class="labels">
                <asp:Label ID="lblInstituteUniversity" runat="server" Text="Institute/University* :" CssClass="style_label"></asp:Label>
                <asp:TextBox ID="tbInstituteUniversity" runat="server" Placeholder="Institute/University" Style="width:370px"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="rfvInstituteUniversity" runat="server" 
                    ErrorMessage="Please type your institute/university in the box." 
                    CssClass="required_field_validator" ControlToValidate="tbInstituteUniversity"></asp:RequiredFieldValidator>
            </span>

            <!-- Graduation Year -->
            <span class="labels">
                    <asp:Label ID="lblGraduationYear" runat="server" Text="Graduation Year* :" CssClass="style_label"></asp:Label>
                    <asp:DropDownList ID="ddlGraduationYear" runat="server">
                        <asp:ListItem>Year</asp:ListItem>
                        <asp:ListItem>2020</asp:ListItem>
                        <asp:ListItem>2019</asp:ListItem>
                        <asp:ListItem>2018</asp:ListItem>
                        <asp:ListItem>2017</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                        <asp:ListItem>1979</asp:ListItem>
                        <asp:ListItem>1978</asp:ListItem>
                        <asp:ListItem>1977</asp:ListItem>
                        <asp:ListItem>1976</asp:ListItem>
                        <asp:ListItem>1975</asp:ListItem>
                        <asp:ListItem>1974</asp:ListItem>
                        <asp:ListItem>1973</asp:ListItem>
                        <asp:ListItem>1972</asp:ListItem>
                        <asp:ListItem>1971</asp:ListItem>
                        <asp:ListItem>1970</asp:ListItem>
                        <asp:ListItem>1969</asp:ListItem>
                        <asp:ListItem>1968</asp:ListItem>
                        <asp:ListItem>1967</asp:ListItem>
                        <asp:ListItem>1966</asp:ListItem>
                        <asp:ListItem>1965</asp:ListItem>
                        <asp:ListItem>1964</asp:ListItem>
                        <asp:ListItem>1963</asp:ListItem>
                        <asp:ListItem>1962</asp:ListItem>
                        <asp:ListItem>1961</asp:ListItem>
                        <asp:ListItem>1960</asp:ListItem>
                        <asp:ListItem>1959</asp:ListItem>
                        <asp:ListItem>1958</asp:ListItem>
                        <asp:ListItem>1957</asp:ListItem>
                        <asp:ListItem>1956</asp:ListItem>
                        <asp:ListItem>1955</asp:ListItem>
                        <asp:ListItem>1954</asp:ListItem>
                        <asp:ListItem>1953</asp:ListItem>
                        <asp:ListItem>1952</asp:ListItem>
                        <asp:ListItem>1951</asp:ListItem>
                        <asp:ListItem>1950</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="rfvGraduationYear" runat="server" 
                        ErrorMessage="Please select your  actual or expected year of completion." 
                        CssClass="required_field_validator" ControlToValidate="ddlGraduationYear" InitialValue="Year"></asp:RequiredFieldValidator>
                </span>

                <!-- Marks/Grade -->
                <span class="labels">
                    <asp:Label ID="lblMarksGrade" runat="server" Text="Marks/Grade* :" CssClass="style_label"></asp:Label>
                    <asp:TextBox ID="tbMarksGrade" runat="server" 
                    Placeholder="Marks/Grade"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvMarksGrade" runat="server" 
                        ErrorMessage="Please specify your grades or % marks." 
                        CssClass="required_field_validator" ControlToValidate="tbMarksGrade"></asp:RequiredFieldValidator>
                </span>

                <!-- Academic Achievements -->
                <asp:UpdatePanel ID="pnlAcademicAchievements" runat="server">
                <ContentTemplate>
                <span class="labels">
                    <asp:Label ID="lblAcademicAchievements" runat="server" Text="Academic Achievements :" CssClass="style_label"></asp:Label>
                    <asp:DropDownList ID="ddlAcademicAchievements" runat="server" 
                onselectedindexchanged="ddlAcademicAchievements_SelectedIndexChanged" AutoPostBack="True">
                        <asp:ListItem Value="None">--Select--</asp:ListItem>
                        <asp:ListItem>College Topper</asp:ListItem>
                        <asp:ListItem>Department Topper</asp:ListItem>
                        <asp:ListItem>School Topper</asp:ListItem>
                        <asp:ListItem>Top 3 in class</asp:ListItem>
                        <asp:ListItem>Top 10 in class</asp:ListItem>
                        <asp:ListItem>Gold Medalist</asp:ListItem>
                        <asp:ListItem>Received Scholarship</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="tbOtherAcademicAchievements" runat="server" 
                    Placeholder="Academic Achievements" Visible="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvAcademicAchievements" runat="server" 
                        ErrorMessage="Please specify your achievements." 
                        CssClass="required_field_validator" ControlToValidate="tbOtherAcademicAchievements"></asp:RequiredFieldValidator>
                    <br />
                </span>
                </ContentTemplate>
                </asp:UpdatePanel>
        </fieldset>
        <br />

        <!-- Basic Education-->
        <fieldset>
            <legend>Basic Education Details</legend>
            <asp:UpdatePanel ID="pnlIntermediate" runat="server">
            <ContentTemplate>
                <span class="labels">
                    <asp:Label ID="lblIntermediate" runat="server" Text="Class XII* :" CssClass="style_label"></asp:Label>
                    <asp:DropDownList ID="ddlIntermediateBoard" runat="server" 
                    AutoPostBack="True" 
                    onselectedindexchanged="ddlIntermediateBoard_SelectedIndexChanged">
                        <asp:ListItem Value="None">--Select--</asp:ListItem>
                        <asp:ListItem>CBSE</asp:ListItem>
                        <asp:ListItem>CISCE(ICSE/ISC)</asp:ListItem>
                        <asp:ListItem>Diploma</asp:ListItem>
                        <asp:ListItem>National Open School</asp:ListItem>
                        <asp:ListItem>State Board</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="tbIntermediateMarks" runat="server" Placeholder="Marks (in %)" Style="width:100px"></asp:TextBox>
                    <asp:DropDownList ID="ddlIntermediateYear" runat="server" Style="width:80px">
                        <asp:ListItem>Year</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlIntermediateMedium" runat="server" 
                    Style="width:140px" AutoPostBack="True">
                        <asp:ListItem>Medium</asp:ListItem>
                        <asp:ListItem>Assamese / Asomiya </asp:ListItem>
                        <asp:ListItem>Bengali / Bangla</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>Gujarati</asp:ListItem>
                        <asp:ListItem>Hindi</asp:ListItem>
                        <asp:ListItem>Kannada</asp:ListItem>
                        <asp:ListItem>Kashmiri</asp:ListItem>
                        <asp:ListItem>Konkani</asp:ListItem>
                        <asp:ListItem>Malayalam</asp:ListItem>
                        <asp:ListItem>Manipuri</asp:ListItem>
                        <asp:ListItem>Marathi</asp:ListItem>
                        <asp:ListItem>Oriya</asp:ListItem>
                        <asp:ListItem>Punjabi</asp:ListItem>
                        <asp:ListItem>Sanskrit</asp:ListItem>
                        <asp:ListItem>Tamil</asp:ListItem>
                        <asp:ListItem>Telugu</asp:ListItem>
                        <asp:ListItem>Urdu</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                        
                    </asp:DropDownList>
                </span>

                <!--State Board -->
                <span class="labels">
                    <asp:Label ID="lblIntermediateStateBoard" runat="server" Text="State Board* :" CssClass="style_label" Visible="False"></asp:Label>
                    <asp:TextBox ID="tbIntermediateStateBoard" runat="server" 
                    Placeholder="Enter Your State Board" Visible="False"></asp:TextBox>
                </span>
            </ContentTemplate>
            </asp:UpdatePanel>

            <!--10th Board Details -->
            <asp:UpdatePanel ID="pnlMatriculation" runat="server">
            <ContentTemplate>
                <span class="labels">
                    <asp:Label ID="lblMatriculation" runat="server" Text="Class X* :" CssClass="style_label"></asp:Label>
                    <asp:DropDownList ID="ddlMatriculationBoard" runat="server" 
                    AutoPostBack="True" 
                    onselectedindexchanged="ddlMatriculationBoard_SelectedIndexChanged">
                        <asp:ListItem Value="None">--Select X Board--</asp:ListItem>
                        <asp:ListItem>CBSE</asp:ListItem>
                        <asp:ListItem>CISCE(ICSE/ISC)</asp:ListItem>
                        <asp:ListItem>National Open School</asp:ListItem>
                        <asp:ListItem>State Board</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="tbMatriculationMarks" runat="server" Placeholder="Marks (in %)" Style="width:100px"></asp:TextBox>
                    <asp:DropDownList ID="ddlMatriculationYear" runat="server" Style="width:80px">
                        <asp:ListItem>Year</asp:ListItem>
                        <asp:ListItem>2016</asp:ListItem>
                        <asp:ListItem>2015</asp:ListItem>
                        <asp:ListItem>2014</asp:ListItem>
                        <asp:ListItem>2013</asp:ListItem>
                        <asp:ListItem>2012</asp:ListItem>
                        <asp:ListItem>2011</asp:ListItem>
                        <asp:ListItem>2010</asp:ListItem>
                        <asp:ListItem>2009</asp:ListItem>
                        <asp:ListItem>2008</asp:ListItem>
                        <asp:ListItem>2007</asp:ListItem>
                        <asp:ListItem>2006</asp:ListItem>
                        <asp:ListItem>2005</asp:ListItem>
                        <asp:ListItem>2004</asp:ListItem>
                        <asp:ListItem>2003</asp:ListItem>
                        <asp:ListItem>2002</asp:ListItem>
                        <asp:ListItem>2001</asp:ListItem>
                        <asp:ListItem>2000</asp:ListItem>
                        <asp:ListItem>1999</asp:ListItem>
                        <asp:ListItem>1998</asp:ListItem>
                        <asp:ListItem>1997</asp:ListItem>
                        <asp:ListItem>1996</asp:ListItem>
                        <asp:ListItem>1995</asp:ListItem>
                        <asp:ListItem>1994</asp:ListItem>
                        <asp:ListItem>1993</asp:ListItem>
                        <asp:ListItem>1992</asp:ListItem>
                        <asp:ListItem>1991</asp:ListItem>
                        <asp:ListItem>1990</asp:ListItem>
                        <asp:ListItem>1989</asp:ListItem>
                        <asp:ListItem>1988</asp:ListItem>
                        <asp:ListItem>1987</asp:ListItem>
                        <asp:ListItem>1986</asp:ListItem>
                        <asp:ListItem>1985</asp:ListItem>
                        <asp:ListItem>1984</asp:ListItem>
                        <asp:ListItem>1983</asp:ListItem>
                        <asp:ListItem>1982</asp:ListItem>
                        <asp:ListItem>1981</asp:ListItem>
                        <asp:ListItem>1980</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlMatriculationMedium" runat="server" 
                    Style="width:140px" AutoPostBack="True">
                        <asp:ListItem>Medium</asp:ListItem>
                        <asp:ListItem>Assamese / Asomiya </asp:ListItem>
                        <asp:ListItem>Bengali / Bangla</asp:ListItem>
                        <asp:ListItem>English</asp:ListItem>
                        <asp:ListItem>Gujarati</asp:ListItem>
                        <asp:ListItem>Hindi</asp:ListItem>
                        <asp:ListItem>Kannada</asp:ListItem>
                        <asp:ListItem>Kashmiri</asp:ListItem>
                        <asp:ListItem>Konkani</asp:ListItem>
                        <asp:ListItem>Malayalam</asp:ListItem>
                        <asp:ListItem>Manipuri</asp:ListItem>
                        <asp:ListItem>Marathi</asp:ListItem>
                        <asp:ListItem>Oriya</asp:ListItem>
                        <asp:ListItem>Punjabi</asp:ListItem>
                        <asp:ListItem>Sanskrit</asp:ListItem>
                        <asp:ListItem>Tamil</asp:ListItem>
                        <asp:ListItem>Telugu</asp:ListItem>
                        <asp:ListItem>Urdu</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                        
                    </asp:DropDownList>
                </span>

                <!--State Board -->
                <span class="labels">
                    <asp:Label ID="lblMatriculationStateBoard" runat="server" Text="State Board* :" CssClass="style_label" Visible="False"></asp:Label>
                    <asp:TextBox ID="tbMatriculationStateBoard" runat="server" 
                    Placeholder="Enter Your State Board" Visible="False"></asp:TextBox>
                </span>
            </ContentTemplate>
            </asp:UpdatePanel>
        </fieldset>
        <br />
        <asp:Button ID="btnSubmitResume" runat="server" Text="Submit Resume" 
            CssClass="orange_button" onclick="btnSubmitResume_Click"/>
     </div>
</asp:Content>
