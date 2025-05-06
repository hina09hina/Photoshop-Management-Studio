using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;
using System.Web.UI.WebControls.Expressions;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.WebControls.Adapters;

public partial class userregister : System.Web.UI.Page
{

    //String s = System.Configuration.ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;


    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void reg_Click(object sender, EventArgs e)
    {
        con.Open();
        //string continueUrl = RegisterUser.ContinueDestinationPageUrl;
        String query = "INSERT INTO userss(username,mobile,email,password) VALUES(@username, @mobile, @email, @password)";

        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@username", Username.Text);
        cmd.Parameters.AddWithValue("@mobile", Mobile.Text);
        cmd.Parameters.AddWithValue("@email", Email.Text);
        cmd.Parameters.AddWithValue("@password", Password.Text);
        int userid = Convert.ToInt32(cmd.ExecuteScalar());


        HttpCookie c1 = new HttpCookie("userid", Convert.ToString(userid));
        HttpCookie c2 = new HttpCookie("username", Username.Text);
        Response.Cookies.Add(c1);
        Response.Cookies.Add(c2);

        con.Close();
        // Response.Redirect("~/home.aspx");
        Label1.Visible = true;
        Label1.Text = "User Registerd Succesfullly!";
    }
}