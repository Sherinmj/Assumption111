using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ChurchWebPortal
{
    public partial class userFeedback : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtdate.Text = DateTime.Now.ToString();
        }
        public void getcon()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["Assumption"].ConnectionString;
            con.Open();
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            getcon();
            String ins = "insert into feedback values('" + txtdate.Text + "','" + txtname.Text + "','" + txtemail.Text + "','" + txtcontact.Text + "','" + txtfeedback.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();
            con.Close();
            txtdate.Text = "";
            txtname.Text = "";
            txtemail.Text = "";
            txtcontact.Text = "";
            txtfeedback.Text = "";

        }
    }
}