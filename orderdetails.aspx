<%@ Page Language="C#" AutoEventWireup="true" CodeFile="orderdetails.aspx.cs" Inherits="orderdetails" %>

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
   <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
<nav class="navbar navbar-expand-lg custom_nav-container">
        <div class="custom_menu-btn">
          <button onclick="openNav()">
            <span class="s-1"> </span>
            <span class="s-2"> </span>
            <span class="s-3"> </span>
          </button>
        </div>
        <div id="myNav" class="overlay">
          <div class="menu_btn-style ">
            <button onclick="closeNav()">
              <span class="s-1"> </span>
              <span class="s-2"> </span>
              <span class="s-3"> </span>
            </button>
          </div>
          <div class="overlay-content">
            <a class="active" href="admin.aspx">
              Admin Dashboard
            </a>
            <a class="" href="orderdetails.aspx">
              Order Details
            </a>
            
          </div>
        </div>
        <a class="navbar-brand" href="admin.aspx">
          <span>
        Rutzz Photography
          </span>
        </a>
       
      </nav>
    </header>
    <!-- end header section -->
    <form id="form1" runat="server">

          <section class="portfolio_section layout_padding">
    <div class="container">
      <div class="heading_container heading_center">
      <br />
      <br />
        <h2>
          Order Details
        </h2>
      </div>
      <div class="portfolio_container ">
            <div class="container">                
                 <div align="center">
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                         DataKeyNames="billid" DataSourceID="SqlDataSource1" 
                         CssClass=" justify-content-centerborder-dark text-black" Height="87px" 
                         Width="1018px">
                   <Columns>
                       <asp:BoundField DataField="username" HeaderText="User Name" 
                           SortExpression="username" />
                       <asp:BoundField DataField="groomname" HeaderText="Groom Name" 
                           SortExpression="groomname" />
                       <asp:BoundField DataField="bridename" HeaderText="Bride Name" 
                           SortExpression="bridename" />
                       <asp:BoundField DataField="orderside" HeaderText="Order From" 
                           SortExpression="orderside" />
                       <asp:BoundField DataField="mobileno" HeaderText="Mobile No." 
                           SortExpression="mobileno" />
                       <asp:BoundField DataField="eventstart" HeaderText="Event Starting Date" 
                           SortExpression="eventstart" />
                       <asp:BoundField DataField="eventend" HeaderText="Event Ending  Date" 
                           SortExpression="eventend" />
                       <asp:BoundField DataField="photographer" HeaderText="Photographer" 
                           SortExpression="photographer" />
                       <asp:BoundField DataField="videographer" HeaderText="Videographer" 
                           SortExpression="videographer" />
                       <asp:BoundField DataField="total" HeaderText="Total" SortExpression="total" />
                   </Columns>
                     <HeaderStyle CssClass="bg-dark text-light align-content-center justify-content-center" />
                     </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                         ConnectionString="<%$ ConnectionStrings:constring %>" 
                         DeleteCommand="DELETE FROM [bookorders] WHERE [billid] = @billid" 
                         InsertCommand="INSERT INTO [bookorders] ([userid], [username], [groomname], [bridename], [orderside], [mobileno], [eventstart], [eventend], [photographer], [videographer], [total]) VALUES (@userid, @username, @groomname, @bridename, @orderside, @mobileno, @eventstart, @eventend, @photographer, @videographer, @total)" 
                         SelectCommand="SELECT * FROM [bookorders] ORDER BY [billid]" 
                         
                         UpdateCommand="UPDATE [bookorders] SET [userid] = @userid, [username] = @username, [groomname] = @groomname, [bridename] = @bridename, [orderside] = @orderside, [mobileno] = @mobileno, [eventstart] = @eventstart, [eventend] = @eventend, [photographer] = @photographer, [videographer] = @videographer, [total] = @total WHERE [billid] = @billid">
                    <DeleteParameters>
                        <asp:Parameter Name="billid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="userid" Type="Int32" />
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="groomname" Type="String" />
                        <asp:Parameter Name="bridename" Type="String" />
                        <asp:Parameter Name="orderside" Type="String" />
                        <asp:Parameter Name="mobileno" Type="Decimal" />
                        <asp:Parameter Name="eventstart" Type="String" />
                        <asp:Parameter Name="eventend" Type="String" />
                        <asp:Parameter Name="photographer" Type="Int32" />
                        <asp:Parameter Name="videographer" Type="Int32" />
                        <asp:Parameter Name="total" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="userid" Type="Int32" />
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="groomname" Type="String" />
                        <asp:Parameter Name="bridename" Type="String" />
                        <asp:Parameter Name="orderside" Type="String" />
                        <asp:Parameter Name="mobileno" Type="Decimal" />
                        <asp:Parameter Name="eventstart" Type="String" />
                        <asp:Parameter Name="eventend" Type="String" />
                        <asp:Parameter Name="photographer" Type="Int32" />
                        <asp:Parameter Name="videographer" Type="Int32" />
                        <asp:Parameter Name="total" Type="Int32" />
                        <asp:Parameter Name="billid" Type="Int32" />
                    </UpdateParameters>
                     </asp:SqlDataSource>
                 </div>
             
             <br /> <br />
                 <div class="container">
                
      <div align=center>
      
      <asp:Button ID="btnlogin" runat="server" Text="Logout" 
              CssClass="btn_box btn btn-outline-dark" onclick="btnlogin_Click" ></asp:Button>
            
      </div>
                 </div>
             </div>
        </div>
      </div>
</section>
</div>

      
  <!-- footer section -->
  <footer class="footer_section">
    <div class="container-fluid">
      <div class="row">
        <div class="col-xl-6">
          <p>
            &copy; <span id="displayYear"></span> All Rights Reserved. Design
            by
            <a>Ruchi Patel</a>
          </p>
        </div>
        <div class="col-xl-6">
          <div class="link_box">
            <a class="" href="admin.aspx">
              Admin Dashboard
            </a>
            <a class="" href="orderdetails.aspx">
              Order Details
            </a>
            
          </div>
        </div>
      </div>
    </div>



  </footer>
  <!-- footer section -->

  <script src="js/jquery-3.4.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js">
  </script>
  <script src="js/custom.js"></script>
  <!-- Google Map -->
 <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=myMap"></script>

  <!-- End Google Map -->

    </form>

</body>
</html>

