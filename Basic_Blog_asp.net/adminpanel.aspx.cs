using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.OleDb;
using System.IO;
using System.Data;

public partial class adminpanel : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] == null)
        {
            Response.Redirect("mainpage.aspx");
        }
        else
        {
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminuser.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminpost.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Cookies.Clear();
        Response.Redirect("mainpage.aspx");
    }
}