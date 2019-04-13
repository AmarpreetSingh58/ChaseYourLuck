using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class user_userMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        
          Response.Redirect("~/error.aspx");
        else
        {
            string id = Session["uid"].ToString();
            Label1.Text = id;
        }
                  

    }
    protected void TreeView1_SelectedNodeChanged(object sender, EventArgs e)
    {
        String value = TreeView1.SelectedValue;
        if (value == "Logout")
        {
            Session.Abandon();
            Response.Redirect("~/ulogin.aspx");
        }           
            
    }
}
