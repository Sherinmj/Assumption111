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
    public partial class student_details : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //grid();
                BindDropDownList();
                //getcon();
                //string str = "select teacher_name from teacher_details";
                //SqlCommand cmd = new SqlCommand(str, con);
                //SqlDataAdapter adr = new SqlDataAdapter(cmd);
                //DataTable dt = new DataTable();
                //adr.Fill(dt);
                //DropDownList1.DataSource = dt;
                //DropDownList1.DataTextField = "teacher_name";
                //DropDownList1.DataBind();
                //con.Close();
            }
        }

        public void getcon()
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["Assumption"].ConnectionString;
            con.Open();
        }

        //public void grid()
        //{
        //    getcon();
        //    string str = "select * from student_details";
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

        //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{
        //    GridView1.EditIndex = -1;
        //    grid();

        //}

        //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    getcon();
        //    String id = ((Label)GridView1.Rows[e.RowIndex].FindControl("label8")).Text;
        //    string del = "delete from student_details where student_id=" + id;
        //    SqlCommand cmd = new SqlCommand(del, con);
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    grid();

        //}

        //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    GridView1.EditIndex = e.NewEditIndex;
        //    grid();

        //}

        //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    getcon();
        //    String id = ((Label)GridView1.Rows[e.RowIndex].FindControl("label9")).Text;
        //    String name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
        //    String dob = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
        //    String std = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text;
        //    String teacher = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;
        //    String halfyr_mark = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6")).Text;
        //    String finalyr_mark = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5")).Text;
        //    String update = "update student_details set student_name='" + name + "', dob='" + dob + "',std='" + std + "',teacher='" + teacher + "',halfyr_mark='" + halfyr_mark + "',finalyr_mark='" + finalyr_mark + "' where student_id='" + id + "'";
        //    SqlCommand cmd = new SqlCommand(update, con);
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    GridView1.EditIndex = -1;
        //    grid();


        //}

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            getcon();
            String ins = "insert into student_details values('" + txtname.Text + "','" + txtdob.Text + "','"+txtage.Text+"','" + txtstandard.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + txthalfyr.Text + "','" + txtfinalyr.Text + "')";
            SqlCommand cmd = new SqlCommand(ins, con);
            Response.Write("<script>alert('Registered Successfully)</script>");
            cmd.ExecuteNonQuery();

            txtname.Text = "";
            txtdob.Text = "";
            txtage.Text = "";
            txtstandard.Text = "";

            txthalfyr.Text = "";
            txtfinalyr.Text = "";

        }

        private void BindDropDownList()
        {
            DataTable dt = new DataTable();
            try
            {
                
                string sql = "";
                sql = "select teacher_name from teacher_details";
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Assumption"].ConnectionString);
                con.Open();
                SqlDataAdapter dap = new SqlDataAdapter(sql, con);
                dap.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    DropDownList1.DataSource = dt;
                    DropDownList1.DataTextField = "teacher_name";
                    DropDownList1.DataBind();
                }

            }

            catch (System.Data.SqlClient.SqlException ex)
            {
                string msg = "fetch error";
                msg += ex.Message;
                throw new Exception(msg);
            }
            finally
            {
                con.Close();
            }
            con.Close();
        }
    }

}