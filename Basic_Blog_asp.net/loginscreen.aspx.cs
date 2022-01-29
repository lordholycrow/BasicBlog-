using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Configuration;

public partial class loginscreen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    SqlConnection baglan = new SqlConnection(@"Data Source =.; Initial Catalog = canlitarih; Integrated Security = True");

    protected void Button1_Click1(object sender, EventArgs e)
    {
        string admin = "admin";
        if(username.Text=="admin" && password.Text=="admin")
        {

            Session["admin"] = admin;
            Response.Redirect("adminpanel.aspx");
        }
        else
        { 

        SqlCommand cmd = new SqlCommand();
        baglan.Open();
        cmd.Connection = baglan;
        cmd.CommandText = "select * from userinfo where username='" + username.Text + "' and password='" + password.Text + "'";
    
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            Session["username"] = username.Text.Trim();
            Response.Redirect("loginedpage.aspx");

        }
        else
        {
            Label1.Text =("kullanıcı adı veya şifre hatalı");

        }

        }
        baglan.Close();

    }
}