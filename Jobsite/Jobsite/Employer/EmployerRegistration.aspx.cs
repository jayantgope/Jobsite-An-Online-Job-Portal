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
    public partial class WebForm2 : System.Web.UI.Page
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
                ddlState.Items.Insert(0, new ListItem("--Select--"));
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Db_Connection();
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
            ddlCity.Items.Insert(0, new ListItem("--Select--"));
        }
        protected void btnJoinJobsite_Click(object sender, EventArgs e)
        {
            string email_id, password, company_name, contact_person_name, company_type, industry_type, address_line1, address_line2, address_line3, state, city, pin_code, contact_no;
            email_id = tbEmailID.Text;
            password = tbCreatePassword.Text;
            company_name = tbCompanyName.Text;
            contact_person_name = tbContactPerson.Text;
            company_type = rblCompanyType.Text; 
            industry_type = ddlIndustryType.Text;
            address_line1 = tbAddressLine1.Text;
            address_line2 = tbAddressLine2.Text;
            address_line3 = tbAddressLine3.Text;
            state = ddlState.Text;
            city = ddlCity.Text;
            pin_code = tbPincode.Text;
            contact_no = tbContactNo.Text;

            String address = address_line1 + " " + address_line2 + " " + address_line3;

            Db_Connection();

            SqlCommand EmployerDetails = new SqlCommand("INSERT INTO employer_registration(email_id, company_name, contact_person_name, company_type, industry_type, address, state, city, pin_code, contact_no) VALUES ('" + email_id + "','" + company_name + "','" + contact_person_name + "','" + company_name + "','" + industry_type + "','" + address + "','" + state + "','" + city + "','" + pin_code + "','" + contact_no + "')", connection);
            EmployerDetails.ExecuteNonQuery();
            connection.Close();

            Db_Connection();
            SqlCommand loginDetails = new SqlCommand("INSERT INTO login VALUES ('" + email_id + "','" + password + "','Employer', 'Active')", connection);
            loginDetails.ExecuteNonQuery();
            connection.Close();
        }
    }
}