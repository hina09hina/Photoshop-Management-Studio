using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
public partial class Login : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (Username.Text=="Admin" && Password.Text == "12345") {
            HttpCookie c2 = new HttpCookie("username", Username.Text);
            Response.Cookies.Add(c2);
            Response.Redirect("~/admin.aspx");

        }

        String pass = Password.Text;
        String usernm = Username.Text;
        con.Open();
        cmd = new SqlCommand("SELECT userid,password FROM userss WHERE username=@username AND password=@password", con);
        cmd.Parameters.AddWithValue("@username", Username.Text);
        cmd.Parameters.AddWithValue("@password", Password.Text);
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            HttpCookie c1 = new HttpCookie("userid", Convert.ToString(dr["userid"]));
            HttpCookie c2 = new HttpCookie("username", usernm);
            Response.Cookies.Add(c1);
            Response.Cookies.Add(c2);
            Response.Redirect("~/home.aspx");
        }
        else
        {
            Label1.Visible = true;
           
            Label1.Text = "Username or Password Incorrect!!!";
        }
    }

    }
