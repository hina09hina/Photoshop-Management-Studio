<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

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
        <a class="navbar-brand" href="">
          <span class="text-dark">
       Rutzz Photography
          </span>
        </a>
     
      </nav>
    </header>
    <!-- end header section -->
 

<br /><br /><br />
      <!-- about section -->

  <section class="about_section ">
    <div class="container-fluid">
      <div class="row">
        <div class="img-box col-md-6">
          <img src="images/login.jpg" alt="" />
        </div>
        <div class="detail-box detail_box_common col-md-6 text_center">
          <div class="heading_container heading_center">
           
             <h2>
          Login
        </h2>
      </div>
      <div class="row">
         <div class="form_container">
            <form id="Form1" runat="server">
              <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Username Is Rrequired." ControlToValidate="Username" ForeColor="Red"></asp:RequiredFieldValidator>

                <asp:TextBox ID="Username" runat="server" CssClass="form-control" placeholder="User Name"></asp:TextBox>
              </div>
              <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Password Is Rrequired." ControlToValidate="Password" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:TextBox ID="Password" runat="server" CssClass="form-control" 
                      placeholder="Password" TextMode="Password"></asp:TextBox>
              </div>
              <div class="btn_box"><br/>
                 <asp:Button ID="btnlogin" runat="server" Text="Login" 
                      CssClass="btn_box btn btn-outline-light" onclick="btnlogin_Click"></asp:Button>
              </div>
              <div>
              <br />Not registered? <a href="userregister.aspx"> Register Yourself</a>
              <br /><asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Font-Bold="True" ForeColor="Red"></asp:Label>
              </div>
            </form>
          
      </div>

          </div>
         
           
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->


</body>
</html>
