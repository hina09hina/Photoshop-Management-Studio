<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookings.aspx.cs" Inherits="bookings" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <!-- Basic -->
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
            <a class="active" href="Home.aspx">
              Home
            </a>
            <a class="" href="about.aspx">
              About
            </a>
            <a class="" href="portfolio.aspx">
              Portfolio
            </a>
            <a class="" href="account.aspx">
              Account
            </a>
            <a class="" href="orders.aspx">
              Bookings
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


    
      <section class="portfolio_section layout_padding">
    <div class="container">
      <div class="heading_container heading_center">
      <br />
      <br />
        <h2>
          Book Us For Your Event
        </h2>
      </div>
      <div class="portfolio_container ">
            <div class="container">                
                 <div class="row">
                 <div class="col-6">
             <form id="Form1" runat="server">
             <div>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Groom Name Is Required." ControlToValidate="Gname" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="Gname" runat="server" CssClass="form-control" placeholder="Groom Name"></asp:TextBox>
              </div>
              <div>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Bride Name Is Required." ControlToValidate="Bname" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:TextBox ID="Bname" runat="server" CssClass="form-control" placeholder="Bride Name"></asp:TextBox>
              </div>
              <div class="d-flex m-xl-3">
               <asp:Label ID="Label8" runat="server" Text="Order From "></asp:Label>&nbsp
             &nbsp
              <asp:DropDownList ID="DropDownList3" runat="server" PlaceHolder="Order From" CssClass=" form-control  w-75">
                  <asp:ListItem Value="Groom Side"></asp:ListItem>
                  <asp:ListItem Value="Bride Side"></asp:ListItem>
                  <asp:ListItem Value="Both Side"></asp:ListItem>
                  </asp:DropDownList> 
              </div>
             <div>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Mobile No. Is Required." ControlToValidate="Mobile" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter Valid Mobile No." ValidationExpression="[0-9]{10}" ControlToValidate="Mobile" ForeColor="Red"></asp:RegularExpressionValidator>
                 <asp:TextBox ID="Mobile" runat="server" CssClass="form-control" 
                      placeholder="Mobile No."></asp:TextBox>
              </div>

              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Date Is Required." ControlToValidate="Estart" ForeColor="Red"></asp:RequiredFieldValidator>
              <div class="d-flex"><br /> 
              <asp:Label ID="Label3" runat="server" Text="Event Starting Date"></asp:Label>
              &nbsp
              &nbsp              
                 <asp:TextBox ID="Estart" runat="server" CssClass="form-control" 
                      placeholder="Event Starting Date" Width="200"></asp:TextBox>
               </div>           
              <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Date Is Required." ControlToValidate="Edate" ForeColor="Red"></asp:RequiredFieldValidator>
           <div class="d-flex"> 
               <asp:Label ID="Label2" runat="server" Text="Event Ending Date"></asp:Label>
             &nbsp
             &nbsp
             &nbsp
              <asp:TextBox ID="edate" runat="server" CssClass="form-control" 
                      placeholder="Event Ending Date" Width="200"></asp:TextBox><br />
              </div>
          
          <br /> <div class="d-flex"> 
               <asp:Label ID="Label4" runat="server" Text="Photographers"></asp:Label>
             &nbsp
              <asp:DropDownList ID="DropDownList1" runat="server" PlaceHolder="Photographer" CssClass=" form-control w-25">
                  <asp:ListItem Value="1"></asp:ListItem>
                  <asp:ListItem Value="2"></asp:ListItem>
                  <asp:ListItem Value="3"></asp:ListItem>
                  <asp:ListItem Value="4"></asp:ListItem>
                  <asp:ListItem Value="5"></asp:ListItem>
                  </asp:DropDownList>&nbsp &nbsp &nbsp
             <asp:Label ID="Label6" runat="server" Text="Per Person RS.5000 Per Day"></asp:Label>
              </div>
              <br />

                <div class="d-flex"> 
               <asp:Label ID="Label5" runat="server" Text="Videographers"></asp:Label>
             &nbsp
              <asp:DropDownList ID="DropDownList2" runat="server" PlaceHolder="Videographers"  
                        CssClass=" form-control w-25" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList2_SelectedIndexChanged">
                  <asp:ListItem Value="1"></asp:ListItem>
                  <asp:ListItem Value="2"></asp:ListItem>
                  <asp:ListItem Value="3"></asp:ListItem>
                  <asp:ListItem Value="4"></asp:ListItem>
                  <asp:ListItem Value="5"></asp:ListItem>
                  </asp:DropDownList>
              
               &nbsp &nbsp &nbsp
                  <asp:Label ID="Label7" runat="server" Text="Per Person RS.8000 Per Day"></asp:Label>
              
              </div>
              <div><br />
              
                <asp:TextBox ID="Total" runat="server" CssClass="form-control" placeholder="Total Cost" ReadOnly></asp:TextBox>
              </div>
             
              <div class="btn_box">
              <br />
                <asp:Button ID="reg" runat="server" Text="Book Your Order" 
                      CssClass="btn_box btn btn-outline-dark" onclick="reg_Click"></asp:Button>
                  
               </div>
               <div>
               <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Font-Bold="True" ForeColor="Red"></asp:Label>
               </div>
              
            </form>
          
                    </div>
                    <div class="col-6">
                    <div class="card b-1">
                        <img src="images/book.jpeg" alt="">
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
            <a class="" href="Home.aspx">
              Home
            </a>
            <a class="" href="about.aspx">
              About
            </a>
            <a class="" href="portfolio.aspx">
              Portfolio
            </a>
            <a class="" href="account.aspx">
              Account
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

</body>
</html>
