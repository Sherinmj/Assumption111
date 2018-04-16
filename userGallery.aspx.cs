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
    public partial class userGallery : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = ConfigurationManager.ConnectionStrings["Assumption"].ConnectionString;
            con.Open();
            SqlDataAdapter adr = new SqlDataAdapter("select image_path from gallery", con);
            DataTable dt = new DataTable();
            adr.Fill(dt);
            RptGal.DataSource = dt;
            RptGal.DataBind();
            string a = dt.Rows[0][0].ToString();
            con.Close();
        }
    }
}