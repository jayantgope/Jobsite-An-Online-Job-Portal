using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Jobsite.Employer
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection connection;
        public void Db_Connection()
        {
            connection = new SqlConnection();
            connection.ConnectionString = "Data Source=JIn;Initial Catalog=Jobsite;Integrated Security=True;MultipleActiveResultSets=True;";
            connection.Open();
        }
        public void Retrieve_Cities()
        {
            if (!IsPostBack)
            {
                SqlCommand retrieve_cities = new SqlCommand("SELECT DISTINCT city_state FROM cities", connection);
                SqlDataAdapter dataAdapter = new SqlDataAdapter(retrieve_cities);
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet);
                ddlState.DataTextField = dataSet.Tables[0].Columns["city_state"].ToString();
                ddlState.DataSource = dataSet.Tables[0];
                ddlState.DataBind();
                ddlState.Items.Insert(0, new ListItem("--Select State--"));
            }
        }
        public void Retrieve_Courses()
        {
            if (!IsPostBack)
            {
                SqlCommand retrieve_courses = new SqlCommand("SELECT DISTINCT course FROM courses", connection);
                SqlDataAdapter dataAdapter = new SqlDataAdapter(retrieve_courses);
                DataSet dataSet = new DataSet();
                dataAdapter.Fill(dataSet);
                ddlJobCategory.DataTextField = dataSet.Tables[0].Columns["course"].ToString();
                ddlJobCategory.DataSource = dataSet.Tables[0];
                ddlJobCategory.DataBind();
                ddlJobCategory.Items.Insert(0, new ListItem("--Select--"));
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Db_Connection();
            Retrieve_Courses();
            Retrieve_Cities();
        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            String state = ddlState.Text;
            SqlCommand retrieve_city = new SqlCommand("SELECT city_name FROM cities where city_state = '" + state + "'", connection);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(retrieve_city);
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);
            ddlCity.DataTextField = dataSet.Tables[0].Columns["city_name"].ToString();
            ddlCity.DataSource = dataSet.Tables[0];
            ddlCity.DataBind();
            ddlCity.Items.Insert(0, new ListItem("--Select City--"));
        }

        protected void ddlJobCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
            String Course_Name = ddlJobCategory.Text;
            SqlCommand retrieve_course_specialization = new SqlCommand("SELECT specialization FROM courses where course = '" + Course_Name + "'", connection);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(retrieve_course_specialization);
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet);
            ddlJobCategorySpecific.DataTextField = dataSet.Tables[0].Columns["specialization"].ToString();
            ddlJobCategorySpecific.DataSource = dataSet.Tables[0];
            ddlJobCategorySpecific.DataBind();
            ddlJobCategorySpecific.Items.Insert(0, new ListItem("--Select Functional Area--"));
        }

        protected void btSearchJobs_Click(object sender, EventArgs e)
        {
            String email_id, job_category, functional_area, state, city, skills_required, title, description, salary;
            email_id = "lol";
            job_category = ddlJobCategory.Text;
            functional_area = ddlJobCategorySpecific.Text;
            state = ddlState.Text;
            city = ddlCity.Text;
            skills_required = tbSkillsRequired.Text;
            title = tbTitle.Text;
            description = tbDescription.Text;
            salary = tbSalary.Text;

            Db_Connection();

            SqlCommand JobPosting = new SqlCommand("INSERT INTO job_postings (email_id, job_category, functional_area, state, city, skills_required, title, description, salary) VALUES ('" + email_id + "','" + job_category + "','" + functional_area + "','" + state + "','" + city + "','" + skills_required + "','" + title + "','" + description + "','" + salary +"')", connection);
            JobPosting.ExecuteNonQuery();
            connection.Close();


        }
    }
}