using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class th_chpass : System.Web.UI.Page
{
    SqlConnection mycon = new SqlConnection(WebConfigurationManager.ConnectionStrings["diipak"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    DataTable table = new DataTable();
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        mycon.Open();
        string id = Session["uname"].ToString();
        cmd = new SqlCommand("select * from regDetail where uname='" + id + "' and pass='" + TextBox3.Text + "';", mycon);
        dr = cmd.ExecuteReader();
        table.Load(dr);
        if (table.Rows.Count == 0)
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('Old Password is Incorrect')", true);
        else
        {
            cmd = new SqlCommand("update regDetail set pass='" + TextBox1.Text + "' where uname='" + id + "';", mycon);
            cmd.ExecuteNonQuery();
            Session["pass"] = TextBox1.Text;
            Label2.Text = TextBox1.Text;
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('Password Successfully Updated')", true);
        }
        mycon.Close();
    }
}