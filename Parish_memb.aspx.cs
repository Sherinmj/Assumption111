using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ChurchWebPortal
{
    public partial class Parish_memb : System.Web.UI.Page
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


            con.ConnectionString = @"Data Source=DESKTOP-7F4GBM7\SQLEXPRESS;Initial Catalog=church;User ID=sa;Password=admin123";
            con.Open();
        }

        public void grid()
        {
            getcon();
            string str = "select * from parish_memb";
            SqlCommand cmd = new SqlCommand(str, con);
            SqlDataAdapter adr = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adr.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }


        protected void btnsave_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("/Uploads/" + str));
                string path = "~/Uploads/" + str.ToString();



                String ins = "insert into parish_memb values('" + txtname.Text + "','" + txtbptname.Text + "','" + txtaddress.Text + "','" + txtcontact1.Text + "','" + txtcontact2.Text + "','" + RadioButtonList1.SelectedItem.Text + "','" + DropDownList1.SelectedItem.Text + "','" + txtrelation.Text + "','" + txtfather.Text + "','" + txtmother.Text + "','" + txthuswife.Text + "','" + txtqualifi.Text + "','" + DropDownList2.SelectedItem.Text + "','" + txtdesc.Text + "','" + path + "')";
                SqlCommand cmd = new SqlCommand(ins, con);
                cmd.ExecuteNonQuery();

                txtname.Text = "";
                txtbptname.Text = "";
                txtaddress.Text = "";
                txtcontact1.Text = "";
                txtcontact2.Text = "";
                txtrelation.Text = "";
                txtfather.Text = "";
                txtmother.Text = "";
                txthuswife.Text = "";
                txtqualifi.Text = "";
                txtdesc.Text = "";


                Response.Write("<script>alert('Registered Successfully')</script>");
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            getcon();
            String memb_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("label18")).Text;
            string del = "delete from parish_memb where memb_id=" + memb_id;
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
            String memb_id = ((Label)GridView1.Rows[e.RowIndex].FindControl("label19")).Text;
            String memb_name = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox1")).Text;
            String baptname = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox2")).Text;
            String address = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox3")).Text;
            String contact1 = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox4")).Text;
            String contact2 = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox5")).Text;
            String gender = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox6")).Text;
            String blood_grp = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox7")).Text;
            String family_relation = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox8")).Text;
            String father = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox9")).Text;
            String mother = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox10")).Text;
            String huswife = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox11")).Text;
            String qualifi = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox12")).Text;
            String occu_type = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox13")).Text;
            String occu_desc = ((TextBox)GridView1.Rows[e.RowIndex].FindControl("TextBox14")).Text;
            //String photo = ((Image)GridView1.Rows[e.RowIndex].FindControl("Image2")).Text;

            String update = "update parish_memb set memb_name='" + memb_name + "',baptname='" + baptname + "',address='" + address + "',contact1='" + contact1 + "',contact2='" + contact2 + "',gender='" + gender + "',blood_grp='" + blood_grp + "',family_relation='" + family_relation + "',father='" + father + "',mother=''" + mother + "',huswife='" + huswife + "',qualifi='" + qualifi + "',occu_type='" + occu_type + "',occu_desc='" + occu_desc + "' where memb_id='" + memb_id + "'";
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
    }
}