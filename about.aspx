<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="about" %>

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
          <span class ="text-light">
            Rutzz Photography
          </span>
        </a>
        
      </nav>
    </header>
    <!-- end header section -->
        <!-- about section -->

  <section class="about_section ">
    <div class="container-fluid">
      <div class="row">
        <div class="img-box col-lg-8 col-md-7">
          <img src="images/about-img.jpg" alt="" />
        </div>
        <div class="detail-box detail_box_common col-lg-4 col-md-5 text_center">
          <div class="heading_container heading_center">
            <h2>
              About Us
            </h2>
          </div>
          <p>
           Welcome to Rutzz Photography , where Creativity meets professionalism in every shot. We are a team of passionate photographers dedicated to capturing the moments that matter most to you. Whether it's a family portrait, a special event, or a corporate shoot, our goal is to create timeless images that tell your unique story.</p>
          
          
          <p>With years of experience in the photography industry, we specialize in a wide range of styles, from candid and lifestyle photography to fine art and high-end commercial shoots. Our studio is equipped with the latest technology to ensure that every image is of the highest quality, while our relaxed and friendly environment ensures you feel comfortable and confident in front of the camera.
</p>
<p>At Rutzz Photography, we believe photography is more than just taking pictures—it’s about creating an experience that’s memorable and meaningful. Let us help you preserve your precious moments for years to come.</p>
          
          <a href="about.aspx">
            Read More
          </a>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->

    <!-- team section -->
  <section class="team_section">
    <div class="container-fluid">
      <div class="row">
        <div class="col-lg-4 col-md-5 detail-box detail_box_common text_center">
          <div class="heading_container heading_center">
            <h2>
              Our Services
            </h2>
          </div>
          <p>
            We Provide Best Services To Our CLients!
          </p>
        </div>
        <div class="col-lg-8 col-md-7 team_container text_center">
          <div class="row">
            <div class="col-sm-6 mx-auto">
              <div class="team_box">
                <div class="img-box">
                  <img src="images/team-1.jpg" alt="">
                  <h3>Portrait Photography</h3>
                </div>
                <div class="detail-box ">
                  <h5>
                    Portrait Photography
                  </h5>
                 <p>From family portraits to headshots, we specialize in creating beautiful, timeless images that capture your personality and essence. Our studio or on-location sessions are designed to make you feel comfortable, ensuring natural and flattering results.</p>
                </div>
              </div>
            </div>
            <div class="col-sm-6 mx-auto">
              <div class="team_box">
                <div class="img-box">
                  <img src="images/team-2.jpg" alt="">
                  <h3>Engagement & Wedding Photography</h3>
                </div>
                <div class="detail-box">
                  <h5>
                  Engagement & Wedding Photography
                  </h5>
                  <p>
                  Capture the magic of your engagement and wedding day with our expertly crafted photography services. We focus on every beautiful moment—from candid shots to posed portraits, ensuring your love story is perfectly documented.
                  </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 mx-auto">
              <div class="team_box">
                <div class="img-box">
                  <img src="images/team-3.jpg" alt="">
                  <h3>Event Photography</h3>
                </div>
                <div class="detail-box">
                  <h5>
                   Event Photography
                  </h5>
                <p>
                Let us preserve the memories of your special events, whether it’s a wedding, anniversary, corporate gathering, or celebration. Our team is skilled at capturing candid moments and the details that make each event unique.
                </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- end team section -->

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

  

