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
    public partial class view_family : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid();
                grid1();
            }
        }
        public void getcon()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["Assumption"].ConnectionString;
            con.Open();
        }

        public void grid()
        {
            getcon();
            string str = "select * from add_family";
            SqlCommand cmd = new SqlCommand(str, con);
            cmd.ExecuteNonQuery();
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            con.Close();
        }

        public void grid1()
        {
            getcon();
            string str = "select * from add_memb";
            //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Assumption"].ConnectionString);
            SqlCommand cmd = new SqlCommand(str, con);            
            cmd.ExecuteNonQuery();
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView2.DataSource = dt;
                GridView2.DataBind();
            }
            con.Close();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            getcon();
            String family_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("label2")).Text;
            string del = "delete from add_family where family_id=" + family_id;
            SqlCommand cmd = new SqlCommand(del, con);
            cmd.ExecuteNonQuery();
            con.Close();
            grid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            grid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            getcon();
            String family_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("label2")).Text;
            String family_name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            String address = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
            String joining_date = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text;
            String email = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;
            String contact = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5")).Text;
            String username = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6")).Text;
            String password = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7")).Text;
            String update = "update add_family set family_name='" + family_name + "', address='" + address + "',joining_date='"+joining_date+"', email='"+email+"',contact='" + contact + "',username='" +username + "',password='" + password + "' where family_id='" + family_id + "'";
            SqlCommand cmd = new SqlCommand(update, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            grid();
        }

        protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView2.EditIndex = -1;
            grid1();
        }

        protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            getcon();
            String family_id = ((Label)GridView2.Rows[e.RowIndex].FindControl("label11")).Text;
            string del = "delete from add_memb where family_id=" + family_id;
            SqlCommand cmd = new SqlCommand(del, con);
            cmd.ExecuteNonQuery();
            con.Close();
            grid1();
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            getcon();
            String family_id = ((Label)GridView2.Rows[e.RowIndex].FindControl("label11")).Text;
            String name = ((TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBox8")).Text;
            String gender = ((TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBox9")).Text;
            String dob = ((TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBox10")).Text;
            String relation = ((TextBox)GridView2.Rows[e.RowIndex].FindControl("TextBox11")).Text;
            
            String update = "update add_memb set name='" + name + "', gender='"+gender + "', dob='" + dob + "', relation='" + relation + "' where family_id='" + family_id + "'";
            SqlCommand cmd = new SqlCommand(update, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView2.EditIndex = -1;
            grid1();
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            grid1();
        }
    }
}