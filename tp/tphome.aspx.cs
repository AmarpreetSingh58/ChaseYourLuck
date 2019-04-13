using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class tp_tphome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)

            Response.Redirect("~/error.aspx");
        else
        {

            string pwd = Session["pass"].ToString();
            Label2.Text = pwd;
            string usrnm = Session["uname"].ToString();
            Label1.Text = usrnm;
        }
    }
}