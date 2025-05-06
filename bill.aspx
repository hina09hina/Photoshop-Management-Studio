<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bill.aspx.cs" Inherits="bill" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>Rutzz Photography</title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
  <!-- fonts awesome style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" />
  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700&display=swap" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
</head>
<body>

    <form id="form1" runat="server">
    <div  align="center">
      <asp:Panel ID="Panel1" runat="server" Width="1150" BorderStyle="Double">
    <div>
        <h1 class="bg-dark text-light p-2" align="center">
            <span>Rutzz Photography</span>
        </h1>
    </div>
    <div class="center">
        <br />
        <asp:Label ID="Label1" runat="server" Text="You Don't Book any Order!" Visible="false"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="billid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="username" HeaderText="User Name" SortExpression="username" />
                <asp:BoundField DataField="groomname" HeaderText="Groom Name" SortExpression="groomname" />
                <asp:BoundField DataField="bridename" HeaderText="Bride Name" SortExpression="bridename" />
                <asp:BoundField DataField="orderside" HeaderText="Order From" SortExpression="orderside" />
                <asp:BoundField DataField="mobileno" HeaderText="Mobile No." SortExpression="mobileno" />
                <asp:BoundField DataField="eventstart" HeaderText="Event Starting Date" SortExpression="eventstart" />
                <asp:BoundField DataField="eventend" HeaderText="Event Ending Date" SortExpression="eventend" />
                <asp:BoundField DataField="photographer" HeaderText="Photographer" SortExpression="photographer" />
                <asp:BoundField DataField="videographer" HeaderText="Videographer" SortExpression="videographer" />
                <asp:BoundField DataField="total" HeaderText="Total" SortExpression="total" />
            </Columns>
            <HeaderStyle CssClass="bg-dark text-light" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:constring %>" 
            SelectCommand="SELECT * FROM [bookorders] WHERE ([userid] = @userid)">
            <SelectParameters>
                <asp:CookieParameter CookieName="userid" Name="userid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <footer>
        <div align="center">
            <aside><br />
                <h3 class="bg-dark text-light"><span>Contact us</span></h3>
                <div>
                    <p align="center">Email :- rutzzphotography@gmail.com || Web :- www.rutzzphotography.com || Phone :- +91 987-354-4564 </p>
                </div>
            </aside>
        </div>
    </footer>
</asp:Panel>
<br /><br />
<asp:Button ID="btnGeneratePDF" CssClass="btn btn-dark" runat="server" Text="Generate PDF" OnClick="btnGeneratePDF_Click" />

   
        <a href="Home.aspx">Home</a>
    </div>
    </form>
    
  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <script src="js/custom.js"></script>
  <!-- Google Map -->
 <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=myMap"></script>

</body>
</html>
