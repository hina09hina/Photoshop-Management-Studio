<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

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
    <!-- slider section -->
    <section class="slider_section position-relative">
      <div class="container-fluid">
        <div class="row">
          <div class="detail-box col-lg-4 col-md-5">
            <div id="" class="carousel slide slider_text_carousel" data-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <div class="detail_content">
                    <div>
                      <h1>
                      Taking pictures is savoring life intensely, every hundredth of a second. </h1>

                      <a href="" class="">
                        Read more
                      </a>
                    </div>
                  </div>
                </div>
                <div class="carousel-item">
                  <div class="detail_content">
                    <div>
                      <h1>Don’t shoot what it looks like. Shoot what it feels like. </h1>
                      <a href="" class="">
                        Read more
                      </a>
                    </div>
                  </div>
                </div>
                <div class="carousel-item">
                  <div class="detail_content">
                    <div>
                      <h1>In photography and in life, always look for the light, if you don’t see it, bring it.</h1>
                      <a href="" class="">
                        Read more
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="img-box col-lg-8 col-md-7">
            <div id="" class="carousel slide slider_image_carousel carousel-fade" data-ride="carousel">
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <img src="images/slider-img.jpg" alt="" />
                </div>
                <div class="carousel-item">
                  <img src="images/slider-img2.jpg" alt="" />
                </div>
                <div class="carousel-item">
                  <img src="images/slider-img3.jpg" alt="" />
                </div>
              </div>
            </div>
            <div class="carousel_btn-box">
              <a class="slider_btn_prev" href="" role="button" data-slide="prev">
                <i class="fa fa-long-arrow-left" aria-hidden="true"></i>
                <span class="sr-only">Previous</span>
              </a>
              <a class="slider_btn_next" href="" role="button" data-slide="next">
                <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                <span class="sr-only">Next</span>
              </a>
            </div>
          </div>
        </div>
      </div>

    </section>
    <!-- end slider section -->
  </div>
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
          <a href="about.aspx">
            Read More
          </a>
        </div>
      </div>
    </div>
  </section>

  <!-- end about section -->
  

  <!-- portfolio section -->

  <section class="portfolio_section layout_padding">
    <div class="container">
      <div class="heading_container heading_center">
        <h2>
          Portfolio
        </h2>
      </div>
      <div class="portfolio_container ">


        <div class="box-1">
          <div class="img-box b-1">
            <img src="images/p-1.jpg" alt="">
            <div class="btn-box">
              <a href="" class="btn-1">
                <i class="fa fa-share-alt" aria-hidden="true"></i>
              </a>
            </div>
          </div>
          <div class="img-box b-2">
            <img src="images/p-2.jpg" alt="">
            <div class="btn-box">
              <a href="" class="btn-1">
                <i class="fa fa-share-alt" aria-hidden="true"></i>
              </a>
            </div>
          </div>
        </div>
        <div class="box-2">
          <div class="box-2-top">
            <div class="img-box b-3">
              <img src="images/p-3.jpg" alt="">
              <div class="btn-box">
                <a href="" class="btn-1">
                  <i class="fa fa-share-alt" aria-hidden="true"></i>
                </a>
              </div>
            </div>
          </div>
        </div>
        <div class="box-3">
          <div class="img-box b-1">
            <img src="images/p-4.jpg" alt="">
            <div class="btn-box">
              <a href="" class="btn-1">
                <i class="fa fa-share-alt" aria-hidden="true"></i>
              </a>
            </div>
          </div>
          <div class="img-box b-2">
            <img src="images/p-5.jpg" alt="">
            <div class="btn-box">
              <a href="" class="btn-1">
                <i class="fa fa-share-alt" aria-hidden="true"></i>
              </a>
            </div>
          </div>
        </div>
      </div>

      <div>
        <a href="portfolio.aspx" class="read_btn">
          See More
        </a>
      </div>
    </div>
  </section>
  <!-- end portfolio section -->


 
  <!-- end portfolio section -->
  
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
<!-- contact section -->

  <section class="contact_section ">
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-8 map_container">
          <div class="map">
            <div id="googleMap">
            
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d235014.29981101656!2d72.41458514725205!3d23.02015772700703!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e848aba5bd449%3A0x4fcedd11614f6516!2sAhmedabad%2C%20Gujarat!5e0!3m2!1sen!2sin!4v1739049890513!5m2!1sen!2sin" width="1000" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
          </div>
        </div>
        <div class="col-md-4 detail-box detail_box_common">
          <div>
            <div class="heading_container">
              <h2>
                Get In Touch
              </h2>
            </div>
            <div class="info_contact">
              <div class="contact_link_box">
                <a href="">
                  <i class="fa fa-map-marker" aria-hidden="true"></i>
                  <span>
                    Ahemdabad
                  </span>
                </a>
                <a href="">
                  <i class="fa fa-phone" aria-hidden="true"></i>
                  <span>
                    Call +01 1234567890
                  </span>
                </a>
                <a href="">
                  <i class="fa fa-envelope" aria-hidden="true"></i>
                  <span>
                    rutzzphotography@gmail.com
                  </span>
                </a>
              </div>
              <div class="info_social">
                <a href="">
                  <i class="fa fa-facebook" aria-hidden="true"></i>
                </a>
                <a href="">
                  <i class="fa fa-twitter" aria-hidden="true"></i>
                </a>
                <a href="">
                  <i class="fa fa-linkedin" aria-hidden="true"></i>
                </a>
                <a href="">
                  <i class="fa fa-instagram" aria-hidden="true"></i>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>

  <!-- end contact section -->

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

  <!-- End Google Map -->

</body>

</html>



