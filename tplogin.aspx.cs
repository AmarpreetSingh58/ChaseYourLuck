using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class tplogin : System.Web.UI.Page
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
        cmd = new SqlCommand("select * from regDetail where uname='" + Login1.UserName + "' and pass='" + Login1.Password + "' and type='TP'", mycon);
        dr = cmd.ExecuteReader();
        table.Load(dr);
        if (table.Rows.Count > 0)
        {
            e.Authenticated = true;
            Session["uid"] = table.Rows[0][0].ToString();
            Session["uname"] = table.Rows[0][1].ToString();
            Session["pass"] = table.Rows[0][2].ToString();
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
    protected void RememberMe_CheckedChanged(object sender, EventArgs e)
    {

    }
}