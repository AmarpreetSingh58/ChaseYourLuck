using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class login : System.Web.UI.Page
{

    SqlConnection mycon = new SqlConnection(WebConfigurationManager.ConnectionStrings["diipak"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    DataTable table = new DataTable();

    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        mycon.Open();
        cmd = new SqlCommand("select * from regDetail where uname='" + Login1.UserName + "' and  pass='" + Login1.Password + "' ", mycon);
        dr = cmd.ExecuteReader();
        table.Load(dr);
        if (table.Rows.Count > 0)
        {
            e.Authenticated = true;
            Session["uid"] = table.Rows[0][0].ToString();
            Session["uname"] = table.Rows[0][1].ToString();
            Session["pass"] = table.Rows[0][3].ToString();
            string utype = table.Rows[0][4].ToString();
            if (utype == "user")
                Response.Redirect("~/user/userHome.aspx");
            else if (utype == "admin")
                Response.Redirect("~/admin/adminHome.aspx");
            else if (utype == "TH")
                Response.Redirect("~/th/thome.aspx");
            else if (utype == "TP")
                Response.Redirect("~/tp/tphome.aspx");
        }
        else
        {
            e.Authenticated = false;
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('Incorrect Username Or Password')", true);
        }
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {

    }
}