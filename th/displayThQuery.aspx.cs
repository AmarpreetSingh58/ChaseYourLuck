using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class TH_displayThQuery : System.Web.UI.Page
{
    SqlConnection mycon = new SqlConnection(WebConfigurationManager.ConnectionStrings["diipak"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    DataTable table = new DataTable();
    protected void display1()
    {
        mycon.Open();
        string id = Session["uname"].ToString();
        cmd = new SqlCommand("select * from query where th='"+id+"' and tp is null;", mycon);
        dr = cmd.ExecuteReader();
        table.Load(dr);
        GridView1.DataSource = table;
        GridView1.DataBind();
        GridView1.Columns[0].Visible = false;
        mycon.Close();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            mycon.Open();
            cmd = new SqlCommand("select distinct(uname) from regDetail where type='TP'", mycon);
            dr = cmd.ExecuteReader();
            table.Clear();
            table.Load(dr);
            mycon.Close();
            for (int i = 0; i < table.Rows.Count; i++)
            {
                DropDownList1.Items.Add(table.Rows[i][0].ToString());
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        display1();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        mycon.Open();
        CheckBox chk1;
        Label lid;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            chk1 = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
            if (chk1.Checked == true)
            {
                lid = (Label)GridView1.Rows[i].FindControl("label5");
                cmd = new SqlCommand("update query set tp='" + DropDownList1.Text + "' where sno='" + lid.Text + "'", mycon);
                cmd.ExecuteNonQuery();
            }

        }
        mycon.Close();
        
        display1();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}