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
    public partial class teacher_details : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["Assumption"].ConnectionString;
            con.Open();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            String ins = "insert into teacher_details values('" + txtteacher.Text + "','" + DropDownList1.SelectedItem.ToString() +"','" + txtnostud.Text + "','" + txtjdate.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            Response.Write("<script>alert('Added Successfully)</script>");
            cmd.ExecuteNonQuery();

            txtteacher.Text = "";
            DropDownList1.SelectedItem.Text = "";
            txtnostud.Text = "";
            txtjdate.Text = "";
            
        }
    }
}