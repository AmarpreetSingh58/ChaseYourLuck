using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class user_solution : System.Web.UI.Page
{
    SqlConnection mycon = new SqlConnection(WebConfigurationManager.ConnectionStrings["diipak"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    DataTable table = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        display();
        GridView1.DataSource = table;
        GridView1.DataBind();

    }
    protected void display()
    {
        mycon.Open();
        cmd = new SqlCommand("select query,sol from query where uid='"+Session["uname"]+"'",mycon);
        dr = cmd.ExecuteReader();
        table.Load(dr);
        mycon.Close();
    }
}