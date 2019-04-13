using System;
using System.Web.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class alogin : System.Web.UI.Page
{
    SqlConnection mycon = new SqlConnection(WebConfigurationManager.ConnectionStrings["diipak"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;//fetch data
    DataTable table = new DataTable();//read data
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        mycon.Open();
        cmd = new SqlCommand("Select * from regDetail where uname='" + Login1.UserName + "' and pass='" + Login1.Password + "' and type='admin'", mycon);
        dr = cmd.ExecuteReader();
        table.Load(dr);
        if (table.Rows.Count > 0)
        {
            e.Authenticated = true;
            Session["uid"] = table.Rows[0][0].ToString();
            Session["pass"] = table.Rows[0][2].ToString();
            Session["uname"] = table.Rows[0][1].ToString();
            Response.Redirect("~/admin/adminHome.aspx");
            
        }
        else
        {
            e.Authenticated = false;
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('Incorrect Admin Id or Password')", true);
        }
    }
    protected void LoginButton_Click(object sender, EventArgs e)
    {

    }
    protected void RememberMe_CheckedChanged(object sender, EventArgs e)
    {

    }
}