using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Practice_Fusion
{
    public partial class findDoc : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection conn = new SqlConnection();
     
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = @"Data Source=DESKTOP-5VHTJ5V\SQLEXPRESS;Initial Catalog=practice;Integrated Security=True";

            conn.Open();
        }
        protected void blogout_click(object sender, EventArgs e)
        {
            Response.Redirect("doclist.aspx" + "?type="+tspeciality.SelectedValue + "&zip=" + dzip.SelectedValue);
        }


    }
}