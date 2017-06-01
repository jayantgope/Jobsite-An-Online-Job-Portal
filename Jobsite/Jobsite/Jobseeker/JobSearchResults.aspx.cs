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
    public partial class WebForm7 : System.Web.UI.Page
    {
        SqlConnection connection;
        public void Db_Connection()
        {
            connection = new SqlConnection();
            connection.ConnectionString = "Data Source=JIn;Initial Catalog=Jobsite;Integrated Security=True;MultipleActiveResultSets=True;";
            connection.Open();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Db_Connection();
        }

        protected void btSearchJobs_Click(object sender, EventArgs e)
        {
            SqlCommand Retrieve_Jobs = new SqlCommand("SELECT * from job_postings", connection);
            SqlDataAdapter dataAdapter = new SqlDataAdapter(Retrieve_Jobs);
            DataSet dataSet = new DataSet();
            dataAdapter.Fill(dataSet,"job_postings");
            dlJobs.DataSource = dataSet.Tables[0];
            dlJobs.DataBind();

        }

        public int job_postings { get; set; }
    }
}