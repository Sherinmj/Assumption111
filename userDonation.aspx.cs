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
    public partial class userDonation : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["Assumption"].ConnectionString;
            con.Open();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            String ins = "insert into donation values('" + txtname.Text + "','" + txtemail.Text + "','" + txtphone.Text + "','" + txtamt.Text + "','" + txtpurpose.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.ExecuteNonQuery();

            txtname.Text = "";
            txtemail.Text = "";
            txtphone.Text = "";
            txtamt.Text = "";
            txtpurpose.Text = "";
        }
    }
}