using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Jobsite.Jobseeker
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection connection;
        public void Db_Connection()
        {
            connection = new SqlConnection();
            connection.ConnectionString = "Data Source=JIn;Initial Catalog=Jobsite;Integrated Security=True;MultipleActiveResultSets=True;";
            connection.Open();
        }
        public void Retrieve_Courses()
        {
            if (!IsPostBack)
            {
                SqlCommand retrieve_courses = new SqlCommand("SELECT DISTINCT course FROM courses", connection);
                SqlDataAdapter dataAdapter = new SqlDataAdapter(retrieve_courses);
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet);
                ddlCourseName.DataTextField = dataSet.Tables[0].Columns["course"].ToString();
                ddlCourseName.DataSource = dataSet.Tables[0];
                ddlCourseName.DataBind();
                ddlCourseName.Items.Insert(0, new ListItem("--Select--"));
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Db_Connection();
            if (Session["Email_Id"] != null)
            {
                lblWelcomeText.Text = "Welcome, " + Session["Email_Id"];
                SqlCommand command = new SqlCommand("SELECT * FROM jobseeker_registration WHERE email_id = '"+ Session["Email_Id"]+"'", connection);
                command.Connection = connection;
                SqlDataReader reader = command.ExecuteReader();
                while(reader.Read())
                {
                    String First_Name = reader[1].ToString();
                    String Last_Name = reader[3].ToString();
                    String Full_Name = First_Name + " " + Last_Name;
                    lblStatusMessage.Text = "Congratulations "+Full_Name+" . Your account has been created.";
                }
            }
            Retrieve_Courses();
        }

        protected void ddlCourseName_SelectedIndexChanged(object sender, EventArgs e)
        {
            String courseName = ddlCourseName.Text;
            if (courseName == "Other")
            {
                tbOtherCourseName.Visible = true;
                ddlSpecialization.Items.Insert(0, new ListItem("--Select--"));
                ddlSpecialization.Items.Add(new ListItem("Other"));
                ddlSpecialization.SelectedValue = "Other";
                tbOtherSpecialization.Visible = true;

            }
            else
            {
                tbOtherCourseName.Visible = false;
                tbOtherSpecialization.Visible = false;
                String Course_Name = ddlCourseName.Text;
                SqlCommand retrieve_course_specialization = new SqlCommand("SELECT specialization FROM courses where course = '" + Course_Name + "'", connection);
                SqlDataAdapter dataAdapter = new SqlDataAdapter(retrieve_course_specialization);
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet);
                ddlSpecialization.DataTextField = dataSet.Tables[0].Columns["specialization"].ToString();
                ddlSpecialization.DataSource = dataSet.Tables[0];
                ddlSpecialization.DataBind();
                ddlSpecialization.Items.Insert(0, new ListItem("--Select--"));
                ddlSpecialization.Items.Add(new ListItem("Other"));
            }
        }

        protected void ddlSpecialization_SelectedIndexChanged(object sender, EventArgs e)
        {
            String courseSpecializationName = ddlSpecialization.Text;
            if (courseSpecializationName == "Other")
            {
                tbOtherSpecialization.Visible = true;
            }
            else
            {
                tbOtherSpecialization.Visible = false;
            }
        }

        protected void ddlAcademicAchievements_SelectedIndexChanged(object sender, EventArgs e)
        {
            String Academic_Achievemets = ddlAcademicAchievements.Text;
            if (Academic_Achievemets == "Other")
            {
                tbOtherAcademicAchievements.Visible = true;
            }
            else
            {
                tbOtherAcademicAchievements.Visible = false;
            }
        }

        protected void ddlIntermediateBoard_SelectedIndexChanged(object sender, EventArgs e)
        {
            String Intermediate_Board = ddlIntermediateBoard.Text;
            if (Intermediate_Board == "State Board")
            {
                lblIntermediateStateBoard.Visible = true;
                tbIntermediateStateBoard.Visible = true;
            }
            else
            {
                lblIntermediateStateBoard.Visible = false;
                tbIntermediateStateBoard.Visible = false;
            }
        }

        protected void ddlMatriculationBoard_SelectedIndexChanged(object sender, EventArgs e)
        {
            String Matriculation_Board = ddlMatriculationBoard.Text;
            if (Matriculation_Board == "State Board")
            {
                lblMatriculationStateBoard.Visible = true;
                tbMatriculationStateBoard.Visible = true;
            }
            else
            {
                lblMatriculationStateBoard.Visible = false;
                tbMatriculationStateBoard.Visible = false;
            }
        }

        protected void btnSubmitResume_Click(object sender, EventArgs e)
        {
            String email_id, course_name, specialization, institute, academic_achievements, intermediate_board, intermediate_medium, matriculation_board, matriculation_medium;
            int graduation_year, intermediate_year, matriculation_year;
            float graduation_marks, intermediate_marks, matriculation_marks;

            email_id = Session["Email_Id"].ToString();
            //Graduation Details
            course_name = ddlCourseName.Text;
            specialization = ddlSpecialization.Text;
            institute = tbInstituteUniversity.Text;
            graduation_year = int.Parse(ddlGraduationYear.Text);
            graduation_marks = float.Parse(tbMarksGrade.Text);

            academic_achievements = ddlAcademicAchievements.Text;
            if (academic_achievements == "Other")
            {
                academic_achievements = tbOtherAcademicAchievements.Text;
            }

            //Intermediate Details
            intermediate_board = ddlIntermediateBoard.Text;
            if (intermediate_board == "State Board")
            {
                intermediate_board = tbIntermediateStateBoard.Text;
            }
            intermediate_medium = ddlIntermediateMedium.Text;
            intermediate_year = int.Parse(ddlIntermediateYear.Text);
            intermediate_marks = float.Parse(tbIntermediateMarks.Text);

            //Matriculation Details
            matriculation_board = ddlMatriculationBoard.Text;
            if (matriculation_board == "State Board")
            {
                matriculation_board = tbMatriculationStateBoard.Text;
            }
            matriculation_medium = ddlMatriculationMedium.Text;
            matriculation_year = int.Parse(ddlMatriculationYear.Text);
            matriculation_marks = float.Parse(tbMatriculationMarks.Text);

            Db_Connection();

            SqlCommand Insert_Resume_Details = new SqlCommand("INSERT INTO jobseeker_resume_details(email_id, course_name, institute, graduation_year, marks, academic_achievements, intermediate_board, intermediate_marks, intermediate_year, intermediate_medium, matriculation_board, matriculation_marks, matriculation_year, matriculation_medium) VALUES ('" + email_id + "','" + course_name + "','" + institute + "'," + graduation_year + "," + graduation_marks + ",'" + academic_achievements + "','" + intermediate_board + "'," + intermediate_marks + "," + intermediate_year + ",'" + intermediate_medium + "','" + matriculation_board + "'," + matriculation_marks + "," + matriculation_year + ",'" + matriculation_medium + "')", connection);
            Insert_Resume_Details.ExecuteNonQuery();
            connection.Close();
        }
    }
}