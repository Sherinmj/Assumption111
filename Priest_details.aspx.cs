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
    public partial class Priest_details : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        //String connectionString = ConfigurationManager.ConnectionStrings["Assumption"].ConnectionString;
        String query = "";
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        public void getcon()
        {
           con = new SqlConnection(ConfigurationManager.ConnectionStrings["Assumption"].ConnectionString);
            //con.ConnectionString = ;
            con.Open();
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {

                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("/Uploads/" + str));
                string path = "~/Uploads/" + str.ToString();
                getcon();
                String ins = "insert into priest_details values('" + txtpriest.Text + "','" + txtaddress.Text + "','" + txtcontact.Text + "','" + txtstartdate.Text + "','" + txtenddate.Text + "','" + path + "')";
                SqlCommand cmd = new SqlCommand(ins, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Details Entered Successfully')</script>");
                //String select = "select * from priest_details";
                //cmd = new SqlCommand(select, con);
                //cmd.ExecuteNonQuery();
                //SqlDataAdapter adr = new SqlDataAdapter(cmd);
                //DataTable dt = new DataTable();
                //adr.Fill(dt);
                //if (dt.Rows.Count > 0)
                //{
                //    GridView1.DataSource = dt;
                //    GridView1.DataBind();
                //}

                con.Close();

                txtpriest.Text = "";
                txtaddress.Text = "";
                txtcontact.Text = "";
                txtstartdate.Text = "";
                txtenddate.Text = "";


            }
            

        }

        //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{
        //    GridView1.EditIndex = -1;
        //    grid();


        //}

        //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    getcon();
        //    String id = ((Label)GridView1.Rows[e.RowIndex].FindControl("label8")).Text;
        //    string del = "delete from priest_details where priest_id=" + id;
        //    SqlCommand cmd = new SqlCommand(del, con);
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    grid();

        //}
        //public void grid()
        //{
        //    getcon();
        //    string str = "select * from priest_details";

        //    SqlCommand cmd = new SqlCommand(str, con);
        //    SqlDataAdapter adr = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    adr.Fill(dt);
        //    if (dt.Rows.Count > 0)
        //    {
        //        GridView1.DataSource = dt;
        //        GridView1.DataBind();
        //    }
        //}


        //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    GridView1.EditIndex = e.NewEditIndex;
        //    grid();
        //}

        //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    getcon();
        //    String id = ((Label)GridView1.Rows[e.RowIndex].FindControl("label8")).Text;
        //    String name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
        //    String address = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
        //    String contact = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text;
        //    String start_date = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;
        //    String end_date = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5")).Text;
            
        //    String update = "update priest_details set priest_name='" + name + "', address='" + address + "',contact='" + contact + "', start_date='" + start_date + "',end_date='" + end_date + "' where priest_id='" + id + "'";
        //    SqlCommand cmd = new SqlCommand(update, con);
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    GridView1.EditIndex = -1;
        //    grid();


        //}
    }
}