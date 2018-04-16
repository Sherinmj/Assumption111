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
    public partial class View_priest : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                grid();
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
            string str = "select * from priest_details";
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
        }



        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            grid();

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            getcon();
            String priest_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("label1")).Text;
            string del = "delete from priest_details where priest_id=" + priest_id;
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
            String priest_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("label2")).Text;
            String priest_name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            String address = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
            String contact = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text;
            String start_date = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;
            String end_date = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5")).Text;
            String update = "update priest_details set priest_name='" + priest_name + "', address='" + address + "',contact='" + contact + "',start_date='" + start_date + "',end_date='" + end_date + "' where priest_id='" + priest_id + "'";
            SqlCommand cmd = new SqlCommand(update, con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.EditIndex = -1;
            grid();


        }
    }
}