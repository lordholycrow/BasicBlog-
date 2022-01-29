using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Configuration;

public partial class signup : System.Web.UI.Page
{
    SqlConnection baglan = new SqlConnection(@"Data Source =.; Initial Catalog = canlitarih; Integrated Security = True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
       
        SqlCommand cmd = new SqlCommand();
        baglan.Open();
        cmd.Connection = baglan;
        cmd.CommandText = "insert into userinfo (username,password,email,name,surname,ages) values(@username,@password,@email,@name,@surname,@ages)";
        cmd.Parameters.AddWithValue("@username", username.Text);
        cmd.Parameters.AddWithValue("@password", password.Text);
        cmd.Parameters.AddWithValue("@email", email.Text);
        cmd.Parameters.AddWithValue("@name", name.Text);
        cmd.Parameters.AddWithValue("@surname", surname.Text);
        cmd.Parameters.AddWithValue("@ages", DropDownList1.Text);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        baglan.Close();
        username.Text = string.Empty;
       password.Text = string.Empty;
       email.Text = string.Empty;
        name.Text = string.Empty;
        surname.Text = string.Empty;
        DropDownList1.Text = string.Empty;
        Response.Redirect("loginscreen.aspx");

    }
}