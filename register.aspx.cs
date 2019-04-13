using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    SqlConnection mycon = new SqlConnection("Server=DIIPAK-PC;database=nextech;uid=sa;pwd=admin123" );
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        mycon.Open();
        cmd = new SqlCommand("insert into regDetail(name,uname,pass,email,type) values('"+TextBox1.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"','"+TextBox2.Text+"','user')",mycon);
        try
        {
            cmd.ExecuteNonQuery();
        }
       catch (System.Data.SqlClient.SqlException)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('Username already exist. Try another one')", true);
            mycon.Close();
        }
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('Registration Successful')", true);
        mycon.Close();
    }
}