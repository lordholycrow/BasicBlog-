using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Configuration;

public partial class myprofile : System.Web.UI.Page
{
    SqlConnection baglan = new SqlConnection(@"Data Source =.; Initial Catalog = canlitarih; Integrated Security = True");
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username"] == null)
        {
            Response.Redirect("mainpage.aspx");
        }
        else
        {


            Label1.Text = Session["username"].ToString() +"   "+"adlı kullanıcının profili";


            //labeluser.Text = Session["username"].ToString();

            //SqlCommand cmd2 = new SqlCommand();
            //baglan.Open();
            //cmd2.Connection = baglan;
            //cmd2.CommandText = "select email from  userinfo where username = '" + Session["username"].ToString() + "'";
            //string email = (string)cmd2.ExecuteScalar();
            //cmd2.Dispose();
            //baglan.Close();
            //labelmail.Text = email;

            //SqlCommand cmd3 = new SqlCommand();
            //baglan.Open();
            //cmd3.Connection = baglan;
            //cmd3.CommandText = "select name from  userinfo where username = '" + Session["username"].ToString() + "'";
            //string ad = (string)cmd3.ExecuteScalar();
            //cmd3.Dispose();
            //baglan.Close();
            //labelad.Text = ad;

            //SqlCommand cmd4 = new SqlCommand();
            //baglan.Open();
            //cmd4.Connection = baglan;
            //cmd4.CommandText = "select surname from  userinfo where username = '" + Session["username"].ToString() + "'";
            //string soyad = (string)cmd4.ExecuteScalar();
            //cmd4.Dispose();
            //baglan.Close();
            //labelsoyad.Text = soyad;

            //SqlCommand cmd5 = new SqlCommand();
            //baglan.Open();
            //cmd5.Connection = baglan;
            //cmd5.CommandText = "select ages from  userinfo where username = '" + Session["username"].ToString() + "'";
            //string ages = (string)cmd5.ExecuteScalar();
            //cmd5.Dispose();
            //baglan.Close();
            //labelages.Text = ages.ToString();
        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Cookies.Clear();
        Response.Redirect("mainpage.aspx");
    }
}