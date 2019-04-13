using System;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_query : System.Web.UI.Page
{
    SqlConnection mycon = new SqlConnection(WebConfigurationManager.ConnectionStrings["diipak"].ConnectionString);
    SqlCommand cmd;
    //SqlDataReader dr;
    //DataTable table;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
        mycon.Open();
        string id = Session["uname"].ToString();
        cmd = new SqlCommand("insert into query(cat,sno,query,status,uid)values('"+DropDownList1.Text+"','"+TextBox2.Text+"','"+TextBox1.Text+"','pending','"+id+"');", mycon);
        cmd.ExecuteNonQuery();
        mycon.Close();
        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('Query Sent Successfuly')", true);
        
    }
}