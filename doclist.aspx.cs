using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Practice_Fusion
{
    public partial class doclist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string specialiaty = Request.QueryString.Get("type");
            string zip = Request.QueryString.Get("zip");

            srcDoctors.SelectCommand = "SELECT * FROM doctor WHERE specialization = '" + specialiaty + "' AND zipcode = '" + zip + "'";
            if (grdDoctors.Rows.Count == 0)
            {
                lblMesssage.Text = "No Results found";
                lblMesssage.Visible = true;
            }
            else
            {
                lblMesssage.Visible = false;
            }
        }

        protected void bgo_Click(object sender, EventArgs e)
        {
            Response.Redirect("findDoc.aspx");
        }
    }

}