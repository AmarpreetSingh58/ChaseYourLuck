using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_adminHome : System.Web.UI.Page
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
            if (Session["uname"].ToString() == "diipak")
            {
                Image1.ImageUrl="~/images/demo/avatar/diipak.jpg";
            }
            else if (Session["uname"].ToString() == "steve")
            {
                Image1.ImageUrl="~/images/demo/avatar/steve.jpg";
            }
            else if (Session["uname"].ToString() == "albert")
            {
                Image1.ImageUrl = "~/images/demo/avatar/albert.jpg";
            }
        }
    }
}