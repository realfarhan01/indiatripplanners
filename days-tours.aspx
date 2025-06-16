<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="days-tours.aspx.vb" Inherits="days_tours" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <main class="main">
         <header class="vs-header layout2">
            <div class="sticky-wrapper position-relative">
               <div class="header-top-wrap">
                  <div class="container custom-container">
                     <div class="row">
                        <div class="col-lg-12">
                           <div class="header-top">
                              <div class="row g-3 justify-content-between align-items-center">
                                 <div class="col-md-6">
                                    <div class="contact-info">
                                       <ul class="custom-ul">
                                          <li class=" d-none d-md-block">
                                             <i class="fa-solid fa-phone-volume"></i>
                                             <a href="tel:+918743855730">+91 874-385-5730</a>
                                          </li>
                                          <!-- <li>
                                             <svg xmlns="http://www.w3.org/2000/svg" width="4" height="22" viewBox="0 0 4 22" fill="none">
                                                <line x1="0.75" y1="2.774e-08" x2="0.749999" y2="21.6114" stroke="white" stroke-opacity="0.3" stroke-width="1.5" />
                                                <line x1="3.5" y1="3.92926" x2="3.5" y2="17.682" stroke="white" stroke-opacity="0.3" />
                                             </svg>
                                          </li>
                                          <li>
                                             <i class="fa-solid fa-envelope"></i>
                                             <a href="mailto:info@indiatripplanners.com">info@indiatripplanners.com</a>
                                          </li> -->
                                          <li>
                                             <div id="google_translate_element"></div>
                                          </li>
                                       </ul>
                                    </div>
                                 </div>
                                 <div class="col-md-6 d-none d-md-block">
                                    <div class="social-share">
                                       <span class="info-share">Follow on:</span>
                                       <svg xmlns="http://www.w3.org/2000/svg" width="4" height="22" viewBox="0 0 4 22" fill="none">
                                          <line x1="0.75" y1="2.774e-08" x2="0.749999" y2="21.6114" stroke="white" stroke-opacity="0.3" stroke-width="1.5" />
                                          <line x1="3.5" y1="3.92941" x2="3.5" y2="17.6821" stroke="white" stroke-opacity="0.3" />
                                       </svg>
                                       <ul class="custom-ul">
                                          <li>
                                             <a href="https://x.com/indiatrip_plan" target="_blank">
                                                <img src="assets/img/icons/icon-twitter.png">
                                             </a>
                                          </li>
                                          <li>
                                             <a href="https://www.facebook.com/IndiaTripplannerstouroperator" target="_blank">
                                                <img src="assets/img/icons/icon-facebook.png">
                                             </a>
                                          </li>
                                          <li>
                                             <a href="https://www.instagram.com/india_trip_planners/" target="_blank">
                                                <img src="assets/img/icons/icon-instagram.png">
                                             </a>
                                          </li>
                                          <li>
                                             <a href="https://www.youtube.com/@indiatripplanners" target="_blank">
                                                <img src="assets/img/icons/icon-youtube.png">
                                             </a>
                                          </li>
                                          <li>
                                             <a href="https://in.pinterest.com/Indiatripplannersdelhi/" target="_blank">
                                                <img src="assets/img/icons/icon-pinterest.png">
                                             </a>
                                          </li>
                                       </ul>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="header-bottom">
                  <div class="container custom-container">
                     <div class="row justify-content-between align-items-center">
                        <div class="col-xl-3 col-lg-auto">
                           <div class="header-logo d-flex justify-content-between align-items-center">
                              <a href="index.html">
                                 <img src="assets/img/logo.png" alt="img" class="logo" />
                              </a>
                              <div class="d-flex align-items-center gap-3">
                                 <button class="wc-link2 searchBoxTggler d-lg-none">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="21" height="20" viewBox="0 0 21 20" fill="none">
                                       <path d="M20.4174 16.6954L17.2213 13.4773C19.3155 10.0703 18.8936 5.54217 15.9593 2.58766C12.5328 -0.862552 6.9769 -0.862552 3.55037 2.58766C0.123835 6.03787 0.123835 11.6322 3.55037 15.0824C6.5354 18.088 11.1341 18.4736 14.5333 16.2469L17.7019 19.4335C18.4521 20.1888 19.6711 20.1888 20.4213 19.4335C21.1675 18.6781 21.1675 17.4507 20.4174 16.6954ZM5.711 12.9029C3.48395 10.6604 3.48395 7.00959 5.711 4.76715C7.93805 2.52471 11.5638 2.52471 13.7909 4.76715C16.018 7.00959 16.018 10.6604 13.7909 12.9029C11.5638 15.1453 7.93805 15.1453 5.711 12.9029Z" fill="#141414"></path>
                                    </svg>
                                 </button>
                                 <button class="vs-menu-toggle style2 d-inline-block d-lg-none">
                                    <i class="fal fa-bars"></i>
                                 </button>
                              </div>
                           </div>
                        </div>
                        <div class="col-xl-9 col-lg-auto d-none d-lg-flex justify-content-end gap-md-4 gap-xl-5">
                           <nav class="main-menu menu-style1 v2 d-none d-lg-block">
                              <ul class="d-flex justify-content-center align-items-center">
                                  <li>
                                     <a href="index.html">Home</a>
                                  </li>
                                  <li>
                                     <a href="travel-destinations.html">Travel Destinations</a>
                                  </li>
                                  <li>
                                     <a href="car-rental.html">Car Rental</a>
                                  </li>
                                  <li>
                                     <a href="tour-packages.html">Tour Packages</a>
                                  </li>
                                  <li>
                                     <a href="days-tours.html">Days Tours</a>
                                  </li>
                                  <li>
                                     <a href="guest-book.html">Feedback</a>
                                  </li>
                                  <li>
                                     <a href="contact-us.html">Contact Us</a>
                                  </li>
                              </ul>
                           </nav>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </header>
         <section class="vs-breadcrumb" data-bg-src="assets/img/bg/breadcrumb-bg.png">
            <img src="assets/img/icons/cloud.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-1 animate-parachute" />
            <img src="assets/img/icons/ballon-sclation.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-2 animate-parachute" />
            <div class="container">
               <div class="row text-center">
                  <div class="col-12">
                     <div class="breadcrumb-content">
                        <h1 class="breadcrumb-title">Same Day Tours</h1>
                     </div>
                     <div class="breadcrumb-menu">
                        <ul class="custom-ul">
                           <li>
                              <a href="index.html">Home</a>
                           </li>
                           <li>Same Day Tours</li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <section class="vs-tour-package style-2 space">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-lg-auto mx-auto">
                     <div class="title-area text-center">
                        <span class="sec-subtitle text-capitalize fade-anim" data-direction="top">Choose Your Package</span>
                        <h2 class="sec-title fade-anim" data-direction="bottom"> Explore Popular package </h2>
                     </div>
                  </div>
               </div>
               <div class="row g-4">
                  <div class="col-md-6 col-xl-3">
                     <div class="tour-package-box style-3 bg-white-color">
                        <div class="tour-package-thumb">
                           <img src="assets/img/tour/01.png" alt="tour-package" class="w-100" />
                        </div>
                        <div class="tour-package-content">
                           <div class="location">
                              <i class="fa-sharp fa-light fa-location-dot"></i>
                              <span>Delhi - Agra</span>
                           </div>
                           <h6 class="title line-clamp-2">
                              <a href="destination-details.html">Same Day Delhi Agra Taj Mahal Tour</a>
                           </h6>
                           <div class="tour-package-footer">                              
                              <div class="pricing-info fw-medium">
                                 <a href="destination-details.html" class="vs-btn style6 text-capitalize p-2">View Details</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6 col-xl-3">
                     <div class="tour-package-box style-3 bg-white-color">
                        <div class="tour-package-thumb">
                           <img src="assets/img/tour/05.png" alt="tour-package" class="w-100" />
                        </div>
                        <div class="tour-package-content">
                           <div class="location">
                              <i class="fa-sharp fa-light fa-location-dot"></i>
                              <span>Delhi</span>
                           </div>
                           <h6 class="title line-clamp-2">
                              <a href="destination-details.html">Same Day Delhi Sightseeing Tour</a>
                           </h6>
                           <div class="tour-package-footer">
                              <div class="pricing-info fw-medium">
                                 <a href="destination-details.html" class="vs-btn style6 text-capitalize p-2">View Details</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6 col-xl-3">
                     <div class="tour-package-box style-3 bg-white-color">
                        <div class="tour-package-thumb">
                           <img src="assets/img/tour/06.png" alt="tour-package" class="w-100" />
                        </div>
                        <div class="tour-package-content">
                           <div class="location">
                              <i class="fa-sharp fa-light fa-location-dot"></i>
                              <span>Delhi - Jaipur</span>
                           </div>
                           <h6 class="title line-clamp-2">
                              <a href="destination-details.html">Same Day Jaipur Tour From Delhi</a>
                           </h6>
                           <div class="tour-package-footer">
                              <div class="pricing-info fw-medium">
                                 <a href="destination-details.html" class="vs-btn style6 text-capitalize p-2">View Details</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6 col-xl-3">
                     <div class="tour-package-box style-3 bg-white-color">
                        <div class="tour-package-thumb">
                           <img src="assets/img/tour/03.png" alt="tour-package" class="w-100" />
                        </div>
                        <div class="tour-package-content">
                           <div class="location">
                              <i class="fa-sharp fa-light fa-location-dot"></i>
                              <span>Ranthambore</span>
                           </div>
                           <h6 class="title line-clamp-2">
                              <a href="destination-details.html">Same Day Jaipur Ranthambore Tour</a>
                           </h6>
                           <div class="tour-package-footer">
                              <div class="pricing-info fw-medium">
                                 <a href="destination-details.html" class="vs-btn style6 text-capitalize p-2">View Details</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6 col-xl-3">
                     <div class="tour-package-box style-3 bg-white-color">
                        <div class="tour-package-thumb">
                           <img src="assets/img/tour/07.png" alt="tour-package" class="w-100" />
                        </div>
                        <div class="tour-package-content">
                           <div class="location">
                              <i class="fa-sharp fa-light fa-location-dot"></i>
                              <span>Delhi</span>
                           </div>
                           <h6 class="title line-clamp-2">
                              <a href="destination-details.html">Same Day Delhi Food Walk Tour</a>
                           </h6>
                           <div class="tour-package-footer">
                              <div class="pricing-info fw-medium">
                                 <a href="destination-details.html" class="vs-btn style6 text-capitalize p-2">View Details</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6 col-xl-3">
                     <div class="tour-package-box style-3 bg-white-color">
                        <div class="tour-package-thumb">
                           <img src="assets/img/tour/08.png" alt="tour-package" class="w-100" />
                        </div>
                        <div class="tour-package-content">
                           <div class="location">
                              <i class="fa-sharp fa-light fa-location-dot"></i>
                              <span>Jaipur</span>
                           </div>
                           <h6 class="title line-clamp-2">
                              <a href="destination-details.html">Same Day Jaipur Heritage Tour</a>
                           </h6>
                           <div class="tour-package-footer">
                              <div class="pricing-info fw-medium">
                                 <a href="destination-details.html" class="vs-btn style6 text-capitalize p-2">View Details</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-md-6 col-xl-3">
                     <div class="tour-package-box style-3 bg-white-color">
                        <div class="tour-package-thumb">
                           <img src="assets/img/tour/09.png" alt="tour-package" class="w-100" />
                        </div>
                        <div class="tour-package-content">
                           <div class="location">
                              <i class="fa-sharp fa-light fa-location-dot"></i>
                              <span>Delhi</span>
                           </div>
                           <h6 class="title line-clamp-2">
                              <a href="destination-details.html">Same Day Delhi Bicycle Tour</a>
                           </h6>
                           <div class="tour-package-footer">
                              <div class="pricing-info fw-medium">
                                 <a href="destination-details.html" class="vs-btn style6 text-capitalize p-2">View Details</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
      </main>
</asp:Content>

