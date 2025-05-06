<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

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
        <a class="navbar-brand" href="Home.aspx">
          <span>
         Rutzz Photography
          </span>
        </a>
        <a href="bookings.aspx" class="call_btn">
          Book Your Order
        </a>
      </nav>
    </header>
     <!-- end header section -->
        <form runat="server">
          <section class="portfolio_section layout_padding">
    <div class="container">
      <div class="heading_container heading_center">
      <br />
      <br />
        <h2>
          Users  Details
        </h2>
      </div>
      <div class="portfolio_container ">
            <div class="container">                
                 <div align="center">
               <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                         DataKeyNames="userid" DataSourceID="SqlDataSource1" 
                         CssClass=" justify-content-centerborder-dark text-black" Height="87px" 
                         Width="844px">
                   <Columns>
                       <asp:CommandField ShowDeleteButton="True" />
                       <asp:BoundField DataField="username" HeaderText="User Name" 
                           SortExpression="username" />
                       <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                       <asp:BoundField DataField="mobile" HeaderText="Mobile No." 
                           SortExpression="mobile" />
                       <asp:BoundField DataField="password" HeaderText="Password" 
                           SortExpression="password" />
                   </Columns>
                     <HeaderStyle CssClass="bg-dark text-light align-content-center justify-content-center" />
                     </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                         ConnectionString="<%$ ConnectionStrings:constring %>" 
                         DeleteCommand="DELETE FROM [userss] WHERE [userid] = @userid" 
                         InsertCommand="INSERT INTO [userss] ([username], [email], [mobile], [password]) VALUES (@username, @email, @mobile, @password)" 
                         SelectCommand="SELECT * FROM [userss]" 
                         UpdateCommand="UPDATE [userss] SET [username] = @username, [email] = @email, [mobile] = @mobile, [password] = @password WHERE [userid] = @userid">
                    <DeleteParameters>
                        <asp:Parameter Name="userid" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="mobile" Type="Decimal" />
                        <asp:Parameter Name="password" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="email" Type="String" />
                        <asp:Parameter Name="mobile" Type="Decimal" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="userid" Type="Int32" />
                    </UpdateParameters>
                     </asp:SqlDataSource>
                 </div>
             
             <br /> <br />
                 <div class="container">
                
      <div align=center>
      
      <asp:Button ID="btnlogin" runat="server" Text="Logout" 
                      CssClass="btn_box btn btn-outline-dark" onclick="btnlogin_Click"></asp:Button>
            
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
