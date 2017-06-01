using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace Jobsite.Jobseeker
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection connection;
        public void Db_Connection()
        {
            connection = new SqlConnection();
            connection.ConnectionString = "Data Source=JIn;Initial Catalog=Jobsite;Integrated Security=True;MultipleActiveResultSets=True;";
            connection.Open();
        }
        public void Retrieve_Location()
        {
            if (!IsPostBack)
            {
                SqlCommand command = new SqlCommand("SELECT city FROM location", connection);
                SqlDataAdapter da = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                da.Fill(ds);
                ddlCurrentLocation.DataTextField = ds.Tables[0].Columns["city"].ToString();
                ddlCurrentLocation.DataSource = ds.Tables[0];
                ddlCurrentLocation.DataBind();
                ddlCurrentLocation.Items.Insert(0, new ListItem("--Select--"));
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Db_Connection();

            Retrieve_Location();
        }

        protected void ddlExperienceInYears_SelectedIndexChanged(object sender, EventArgs e)
        {

            String experience = ddlExperienceInYears.Text;
            if (experience == "--Select--" || experience == "Fresher")
            {
                lblDesignation.Visible = false;
                tbDesignation.Visible = false;
                ddlExperienceInMonths.Visible = false;
                lblMonths.Visible = false;
            }
            else
            {
                int experienceYears = int.Parse(experience);
                if (experienceYears <= 5)
                {
                    ddlExperienceInMonths.Visible = true;
                    lblMonths.Visible = true;
                    lblDesignation.Visible = true;
                    tbDesignation.Visible = true;

                }
                else
                {
                    ddlExperienceInMonths.Visible = false;
                    lblMonths.Visible = false;
                    lblDesignation.Visible = true;
                    tbDesignation.Visible = true;
                }
            }

        }
        public int Calculate_Experience(int year, int month)
        {

            return (year * 12) + month;
        }
        public void Upload_Resume()
        {
            if (fuResume.PostedFile != null && fuResume.PostedFile.ContentLength > 0)
            {

                string fileName = Path.GetFileName(fuResume.PostedFile.FileName);
                string folder = Server.MapPath("~/Resumes/");
                Directory.CreateDirectory(folder);
                fuResume.PostedFile.SaveAs(Path.Combine(folder, fileName));
                try
                {
                    Response.Write("Uploaded: " + fileName);
                }
                catch
                {
                    
                }
            }
        }
        protected void btnJoinJobsite_Click(object sender, EventArgs e)
        {
            String city = "";
            String state = "";
            String email_id = tbEmailID.Text;
            String password = tbCreatePassword.Text;
            String first_name = tbFirstName.Text;
            String middle_name = tbMiddleName.Text;
            String last_name = tbLastName.Text;
            String current_location = ddlCurrentLocation.Text;
            String mobile_number = tbMobileNumber.Text;
            String work_experience = ddlExperienceInYears.Text;
            int experience = 0;
            String designation = tbDesignation.Text;
            String key_skills = tbKeySkills.Text;

            Db_Connection();

            SqlCommand cityState = new SqlCommand("SELECT * FROM location WHERE city = '" + current_location + "'", connection);
            SqlDataReader reader = cityState.ExecuteReader();
            while (reader.Read())
            {
                city = reader[0].ToString();
                state = reader[1].ToString();
            }
            connection.Close();

            Db_Connection();

            
            if (work_experience != "Fresher")
            {
                int work_experience_years = int.Parse(ddlExperienceInYears.Text);
                int work_experience_months = int.Parse(ddlExperienceInMonths.Text);
                experience = Calculate_Experience(work_experience_years, work_experience_months);
            }

            SqlCommand jobseekerDetails = new SqlCommand("INSERT INTO jobseeker_registration(email_id, first_name, middle_name, last_name, city, state, mobile_no, experience, designation, key_skills) VALUES ('" + email_id + "','" + first_name + "','" + middle_name + "','" + last_name + "','" + city + "','" + state + "','" + mobile_number + "','" + experience + "','" + designation + "','" + key_skills + "')", connection);
            jobseekerDetails.ExecuteNonQuery();
            connection.Close();
            Upload_Resume();

            Db_Connection();
            SqlCommand loginDetails = new SqlCommand("INSERT INTO login VALUES ('" + email_id + "','" + password + "','Jobseeker', 'Active')", connection);
            loginDetails.ExecuteNonQuery();
            connection.Close();

            
            

            Session["Email_Id"] = email_id;
            Response.Redirect("../Jobseeker/ResumeManager.aspx");
        }
    }
}
