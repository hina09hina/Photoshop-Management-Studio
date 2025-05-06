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

public partial class orders : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
    SqlCommand cmd2 = new SqlCommand();
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // Initialize the connection
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);

        // Open the connection
        // Initialize the connection
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cons"].ConnectionString);

        // Open the connection
        con.Open();

        // Initialize cmd2 and set the connection for cmd2
        SqlCommand cmd2 = new SqlCommand("SELECT * FROM orders WHERE userid = @userid", con);
        cmd2.Parameters.AddWithValue("@userid", Convert.ToInt32(Request.Cookies["userid"].Value));
        
        // ExecuteReader: Now the connection is initialized and open
        SqlDataReader dr = cmd2.ExecuteReader();

        // Create a list to store data from the cart table
        List<CartItem> cartItems = new List<CartItem>();

        while (dr.Read())
        {
      CartItem item = new CartItem
     {
        Groomname = (string)dr["groomname"] as string, // safely cast to string
        Bridename = (string)dr["bridename"] as string, // safely cast to string
        Orderside = (string)dr["orderside"] as string, // safely cast to string
       Mobileno =(int)Convert.ToInt64(dr["mobileno"]),
        Eventstart =(string) Convert.ToString(dr["eventstart"]), // handle null and convert
        Eventend = (string) Convert.ToString(dr["eventend"]), // handle null and convert
        Photographer = (int)Convert.ToInt32(dr["photographer"]), // handle null and cast to int
        Videographer = (int)Convert.ToInt32(dr["videographer"]), // handle null and cast to int
        Total = (int)Convert.ToInt32(dr["total"]) // handle null and cast to int
    
            };
            cartItems.Add(item);
        }

        // Close the reader after extracting all data
        dr.Close();
        SqlCommand cmdInsert = new SqlCommand("INSERT INTO bookorders (userid,username,groomname,bridename,orderside,mobileno,eventstart,eventend,photographer,videographer,total) VALUES (@userid, @username,@groomname,@bridename,@orderside, @mobileno, @eventstart, @eventend,@photographer,@videographer,@total)", con);
        cmdInsert.Parameters.Add("@userid", SqlDbType.Int);
        cmdInsert.Parameters.Add("@username", SqlDbType.Text);
        cmdInsert.Parameters.Add("@groomname", SqlDbType.Text);
        cmdInsert.Parameters.Add("@bridename", SqlDbType.Text);
        cmdInsert.Parameters.Add("@orderside", SqlDbType.Text);
        cmdInsert.Parameters.Add("@mobileno", SqlDbType.Int);
        cmdInsert.Parameters.Add("@eventstart", SqlDbType.Text);
        cmdInsert.Parameters.Add("@eventend", SqlDbType.Text);
        cmdInsert.Parameters.Add("@photographer", SqlDbType.Int);
        cmdInsert.Parameters.Add("@videographer", SqlDbType.Int);
        cmdInsert.Parameters.Add("@total", SqlDbType.Int);

        // Begin a transaction to ensure consistency
        SqlTransaction transaction = con.BeginTransaction();
        cmdInsert.Transaction = transaction;

        try
        {
            // Loop through the cartItems list and insert data into the 'bookings' table
            foreach (var item in cartItems)
            {
                // Set the parameters for the insert command
                cmdInsert.Parameters["@userid"].Value = Request.Cookies["userid"].Value;
                cmdInsert.Parameters["@username"].Value = Request.Cookies["username"].Value;
                cmdInsert.Parameters["@groomname"].Value = item.Groomname;
                cmdInsert.Parameters["@bridename"].Value = item.Bridename;
                cmdInsert.Parameters["@orderside"].Value = item.Orderside;
                cmdInsert.Parameters["@mobileno"].Value = item.Mobileno;
                cmdInsert.Parameters["@eventstart"].Value = item.Eventstart;
                cmdInsert.Parameters["@eventend"].Value = item.Eventend;
                cmdInsert.Parameters["@photographer"].Value = item.Photographer;
                cmdInsert.Parameters["@videographer"].Value = item.Videographer;
                cmdInsert.Parameters["@total"].Value = item.Total;


                // Execute the insert command for each item in the list
                cmdInsert.ExecuteNonQuery();
            }

            // Commit the transaction after all inserts are complete
            transaction.Commit();

        }
        catch (Exception ex)
        {
            // Rollback the transaction if an error occurs
            transaction.Rollback();
            Console.WriteLine("Error: " + ex.Message);
        }
        finally
        {
            // Close the connection
            con.Close();

          SqlCommand deletecmd = new SqlCommand("delete from orders where userid = @userid", con);
            deletecmd.Parameters.AddWithValue("@userid", Convert.ToInt32(Request.Cookies["userid"].Value));
            con.Open();
           deletecmd.ExecuteNonQuery();
           con.Close();
            Response.Redirect("~/bill.aspx");

        }
    }
    public class CartItem
    {
        public string Groomname { get; set; }
        public string Bridename { get; set; }
        public string Orderside { get; set; }
        public int Mobileno { get; set; }
        public string Eventstart { get; set; }
        public string Eventend { get; set; }
        public int Photographer { get; set; }
        public int Videographer { get; set; }
        public int Total { get; set; }

    };
}