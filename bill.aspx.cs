using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using System.IO;
using iTextSharp;

public partial class bill : System.Web.UI.Page
{

    public override void VerifyRenderingInServerForm(Control control)
    {
        //required to avoid the runtime error "  
        //Control 'GridView1' of type 'GridView' must be placed inside a form tag with runat=server."  
    } 

    protected void Page_Load(object sender, EventArgs e)
    {
        string userID = Convert.ToString(Request.Cookies["userid"].Value);
        LoadMembershipData(userID);


    }
    private void LoadMembershipData(string userID)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);

        string query = "SELECT * FROM bookorders WHERE UserID = @UserID";

        SqlCommand cmd = new SqlCommand(query, con);
        cmd.Parameters.AddWithValue("@UserID", userID);

        con.Open();
        SqlDataReader reader = cmd.ExecuteReader();

        // Check if there are no rows returned
        if (!reader.Read())  // If no rows are returned, reader.Read() will be false
        {
            Label1.Visible = true;  // Show the error label if no data is found
        }
        else
        {
        }

        con.Close();

    }


  
    protected void btnGeneratePDF_Click(object sender, EventArgs e)
    {
        Response.ContentType = "application/pdf";
        Response.AddHeader("content-disposition", "attachment;filename=RutzzPhotographybill.pdf");
        Response.Cache.SetCacheability(HttpCacheability.NoCache);

        // Create a StringWriter to capture the rendered HTML
        StringWriter sw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(sw);

        // Render the entire ASP Panel to the StringWriter
        Panel1.RenderControl(hw);

        // Convert the captured HTML to a StringReader
        StringReader sr = new StringReader(sw.ToString());

        // Create a new Document for the PDF
        Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);

        // Create a PdfWriter instance to write the PDF to the Response OutputStream
        PdfWriter.GetInstance(pdfDoc, Response.OutputStream);

        // Open the document to begin writing
        pdfDoc.Open();

        // Parse the HTML from StringReader and write to the PDF document
        HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
        htmlparser.Parse(sr);

        // Close the PDF document
        pdfDoc.Close();

        // End the Response to send the PDF to the browser
        Response.Write(pdfDoc);
        Response.End();
    }
}