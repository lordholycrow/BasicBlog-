using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.OleDb;
using System.IO;
using System.Data;

public partial class loginedpage : System.Web.UI.Page
{
    SqlConnection baglan = new SqlConnection(@"Data Source =.; Initial Catalog = canlitarih; Integrated Security = True");
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["username"] == null)
        {
            Response.Redirect("mainpage.aspx");
        }
        else
        { 
        welcomelabel.Text = "hoşgeldin "+ Session["username"].ToString();

    
      
        baglan.Open();
        SqlCommand cmd = baglan.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select *  from post";
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        DataList1.DataSource = dt;
        DataList1.DataBind();
        baglan.Close();

        SqlCommand cmd4 = new SqlCommand();
        baglan.Open();
        cmd4.Connection = baglan;
        cmd4.CommandText = "select text from  post";
        string text = (string)cmd4.ExecuteScalar();
        cmd4.Dispose();
        baglan.Close();

        }


    }



 

    protected void Button2_Click1(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        baglan.Open();
        cmd.Connection = baglan;
        cmd.CommandText = "insert into post (username,text,pictureurl,date) values(@username,@text,@pictureurl,@date)";
        cmd.Parameters.AddWithValue("@username", Session["username"].ToString());
        cmd.Parameters.AddWithValue("@text", TextBox1.Text);
        cmd.Parameters.AddWithValue("@pictureurl", FileUpload1.FileName);
        cmd.Parameters.AddWithValue("@date", DateTime.Now);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        baglan.Close();

        TextBox1.Text = null;
        FileUpload1 = null;
        Label3.Text = "Postunuz başarıyla eklenmiştir";
        Response.Redirect("loginedpage.aspx");
      
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Cookies.Clear();
        Response.Redirect("mainpage.aspx");
    }
}



  
