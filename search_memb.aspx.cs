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
    public partial class search_memb : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getcon();
                string com = "select family_name from add_family";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "family_name";
                DropDownList1.DataBind();
                con.Close();
            }
        }
        public void getcon()
        {

            con.ConnectionString = ConfigurationManager.ConnectionStrings["Assumption"].ConnectionString;
            con.Open();
        }

        //private void rep_bind()
        //{
        //    getcon();
        //    string query = "select * from add_family where family_name like '" + DropDownList1.SelectedItem.Text + "%'";
        //    SqlDataAdapter da = new SqlDataAdapter(query, con);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    GridView1.DataSource = ds;
        //    GridView1.DataBind();
        //}
        protected void btnsearch_Click(object sender, EventArgs e)
        {
            getcon();
            String sel1 = "select * from add_family where family_name ='" + DropDownList1.SelectedItem.Text + "'";
            SqlCommand cmd1 = new SqlCommand(sel1, con);
            SqlDataAdapter sd1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            sd1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                
                
                    GridView1.DataSource = dt1;
                    GridView1.DataBind();
                


            }
            else
            {
                Response.Write("<script>alert('Invalid! :-)')</script>");

            }
            con.Close();

            

        }
    }
}