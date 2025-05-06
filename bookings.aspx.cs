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


public partial class bookings : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void reg_Click(object sender, EventArgs e)
    {
        
        con.Open();
        //string continueUrl = RegisterUser.ContinueDestinationPageUrl;
        String query = "INSERT INTO orders(userid,username,groomname,bridename,orderside,mobileno,eventstart,eventend,photographer,videographer,total) VALUES (@userid, @username,@groomname,@bridename,@orderside, @mobileno, @eventstart, @eventend,@photographer,@videographer,@total)";

        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@userid",Convert.ToInt32(Request.Cookies["userid"].Value));      
        cmd.Parameters.AddWithValue("@username", Request.Cookies["username"].Value);
        cmd.Parameters.AddWithValue("@groomname", Gname.Text);
        cmd.Parameters.AddWithValue("@bridename", Bname.Text);
        cmd.Parameters.AddWithValue("@orderside", DropDownList3.SelectedValue);
        cmd.Parameters.AddWithValue("@mobileno", Mobile.Text );
        cmd.Parameters.AddWithValue("@eventstart",Convert.ToString(Estart.Text));
        cmd.Parameters.AddWithValue("@eventend", Convert.ToString (edate.Text));
        cmd.Parameters.AddWithValue("@photographer",Convert.ToInt32(DropDownList1.SelectedValue));
        cmd.Parameters.AddWithValue("@videographer",Convert.ToInt32(DropDownList2.SelectedValue));
        cmd.Parameters.AddWithValue("@total",Request.Cookies["total"].Value);
        cmd.ExecuteNonQuery();
        //HttpCookie c3 = new HttpCookie("bid", Convert.ToString(bid));
        //Response.Cookies.Add(c3);
        con.Close();
        Response.Redirect("orders.aspx");
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        int daycount, videographer, photographer, sum;

        DateTime startDate = Convert.ToDateTime(Estart.Text);
        DateTime endDate = Convert.ToDateTime(edate.Text);

        // Check if the starting date is older than the ending date
        if (startDate > endDate)
        {
            Label1.Visible = true;
            Label1.Text = "Selected Starting date is Older than Ending date";
            daycount = 0; 
        }
        else
        {
            //  difference in days
            TimeSpan dateDifference = endDate - startDate;
            daycount = 1 + dateDifference.Days; 

        }
        videographer = 8000 * Convert.ToInt32(DropDownList1.Text);
        photographer = 5000 * Convert.ToInt32(DropDownList1.Text);
        sum = daycount * (photographer + videographer);
        HttpCookie c3 = new HttpCookie("total", Convert.ToString(sum));
        Response.Cookies.Add(c3);
        
        Total.Text = Convert.ToString(sum);

    }
}