using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class admin_adminAccount : System.Web.UI.Page
{
    SqlConnection mycon = new SqlConnection(WebConfigurationManager.ConnectionStrings["diipak"].ConnectionString);
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        mycon.Open();
        cmd = new SqlCommand("insert into regDetail(name,uname,pass,email,type)values('"+TextBox1.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox2.Text+"','"+DropDownList2.Text+"') ", mycon);
        cmd.ExecuteNonQuery();
        mycon.Close();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('Registration successful')", true);
    }
}