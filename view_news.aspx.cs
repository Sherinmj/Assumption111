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
    public partial class view_news : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string constr = ConfigurationManager.ConnectionStrings["Assumption"].ConnectionString;
                string query = "SELECT image, heading,description from add_news";
                SqlDataAdapter da = new SqlDataAdapter(query, constr);
                DataTable table = new DataTable();

                da.Fill(table);
                DataList1.DataSource = table;
                DataList1.DataBind();
            }
        }
    }
}