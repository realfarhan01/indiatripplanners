<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="index.aspx.vb" Inherits="index" %> <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <main class="main">
      <section class="z-index-common hero-layout1 overflow-clip">
         <div class="swiper india-trip-slider">
            <div class="swiper-wrapper">
                <asp:Repeater ID="rptBindBanners" runat="server">
                    <ItemTemplate>
                       <div class="swiper-slide">
                          <img src="images/banner/<%# Eval("BannerPic")%>" alt="<%# Eval("Title")%>">
                          <div class="slide-content">
                             <h2 class="text-white-color"><%# Eval("Title")%></h2>
                             <p class="text-white-color">One Day Taj Mahal Tour from Delhi</p>
                             <a href="#." class="vs-btn style6 text-capitalize banner-first-btn">Explore Now</a>
                          </div>
                       </div>                        
                    </ItemTemplate>
                </asp:Repeater>                
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-pagination"></div>
         </div>
      </section>
      <section class="pt-5 pb-5">
         <div class="container">
            <div class="row justify-content-between align-items-center">
               <div class="col-md-6 col-lg-6 col-xxl-5">
                  <div class="title-area text-center text-md-start">
                     <h2 class="sec-title fade-anim" data-direction="bottom"> Our Achivements </h2>
                  </div>
               </div>
               <div class="col-md-6 col-lg-6 col-xxl-5">
                  <div class="swiper-arrow2 top-place-navigation justify-content-center justify-content-md-end">
                     <button class="top-place-next">
                        <svg width="9" height="18" viewBox="0 0 9 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                           <path d="M8.08984 16.92L1.56984 10.4C0.799843 9.62996 0.799843 8.36996 1.56984 7.59996L8.08984 1.07996" stroke="#fff" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                     </button>
                     <button class="top-place-prev">
                        <svg width="9" height="18" viewBox="0 0 9 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                           <path d="M0.910156 16.92L7.43016 10.4C8.20016 9.62996 8.20016 8.36996 7.43016 7.59996L0.910156 1.07996" stroke="#fff" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                     </button>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-12 mt-30 mt-md-0">
                  <div class="swiper top-place-slider">
                     <div class="swiper-wrapper">
                        <div class="swiper-slide">
                           <div class="top-place-box">
                              <div class="thumb">
                                 <img src="assets/img/tripadvisor.png" alt="Image" class="w-100" />
                              </div>
                              <h6 class="title text-capitalize">Certificate of Excellence 2018</h6>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="top-place-box">
                              <div class="thumb">
                                 <img src="assets/img/tripadvisor.png" alt="Image" class="w-100" />
                              </div>
                              <h6 class="title text-capitalize">Certificate of Excellence 2019</h6>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="top-place-box">
                              <div class="thumb">
                                 <img src="assets/img/tripadvisor.png" alt="Image" class="w-100" />
                              </div>
                              <h6 class="title text-capitalize">Travellers Choice 2020</h6>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="top-place-box">
                              <div class="thumb">
                                 <img src="assets/img/tripadvisor.png" alt="Image" class="w-100" />
                              </div>
                              <h6 class="title text-capitalize">Certificate of Excellence 2018</h6>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="vs-about position-relative pt-5 pb-5">
         <img src="assets/img/icons/plain-globe.png" alt="plain-globe" class="about-icon-1 animate-parachute" />
         <img src="assets/img/icons/map.png" alt="plain-globe" class="about-icon-2 animate-parachute" />
         <div class="container">
            <div class="row">
               <div class="col-lg-auto mx-auto">
                  <div class="title-area text-center">
                     <span class="sec-subtitle text-capitalize fade-anim" data-direction="top">About Us</span>
                     <h2 class="sec-title fade-anim" data-direction="bottom"> INDIA TRIP PLANNERS </h2>
                  </div>
               </div>
            </div>
            <div class="row g-4 align-items-center">
               <div class="col-md-6 order-1 order-md-0">
                  <div class="about-info-area">
                     <div>
                        <span class="sec-subtitle text-capitalize">Welcome to India Trip Planners</span>
                     </div>
                     <div class="about-info">
                        <p> Are you looking best tour package in india? Don`t worry at we india trip planners are the best travel agency in india which provide all india tour package service in your budget.You can book india trip package and including Experience the diverse wonders of India with our exclusive group tour packages, including the snow-capped peaks of the Himalayas, the sun-drenched beaches of Goa, the vibrant city life and historical monuments, the majestic forts of Rajasthan and the tranquil backwaters of Kerala, As the best tour planner in India, we cover the palaces of Rajasthan, the backwaters of Kerala and the bustling streets of Delhi. Need the best trip planner in New Delhi? We handle hotel bookings, transportation, guided tours and cultural experiencesWhen we say personalized, we mean it – you can travel in majestic style and stay in fantastic palaces, or you can keep it simple and adhere to a budget. </p>
                        <div class="btn-trigger btn-bounce mt-2">
                           <a href="about-us" class="vs-btn style6 text-capitalize">Read More</a>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-md-6 order-0 order-md-1">
                  <div class="row">
                     <div class="col-md-6">
                        <div class="about-thumb fade-anim" data-direction="right">
                           <div id="fb-root"></div>
                           <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v19.0" nonce="YOUR_NONCE_VALUE"></script>
                           <div class="fb-page" data-href="https://www.facebook.com/IndiaTripplannerstouroperator" data-tabs="timeline" data-width="400" data-height="500" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
                              <blockquote cite="https://www.facebook.com/IndiaTripplannerstouroperator" class="fb-xfbml-parse-ignore">
                                 <a href="https://www.facebook.com/IndiaTripplannerstouroperator">India Tripplanners Tour Operator</a>
                              </blockquote>
                           </div>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <script src="https://static.elfsight.com/platform/platform.js" async></script>
                        <div class="elfsight-app-1e96b8ad-feb8-4b07-a390-e3fb4c8e5b0f" data-elfsight-app-lazy></div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="vs-destination-style1 bg-third-theme-12 overflow-hidden space" data-bg-src="assets/img/bg/destination.png">
         <img class="des-icon-1 animate-parachute" src="assets/img/icons/destination-icon-1.png" alt="icon" />
         <img class="des-icon-2 animate-tree" src="assets/img/icons/destination-icon-2.png" alt="icon" />
         <div class="container-fluid">
            <div class="row">
               <div class="col-lg-auto mx-auto">
                  <div class="title-area text-center">
                     <span class="sec-subtitle fade-anim" data-direction="top">Top Destinations</span>
                     <h2 class="sec-title move-anim">Best India Tours by Interest</h2>
                  </div>
               </div>
            </div>
            <div class="row g-4">
               <div class="col-md-6 col-xl-3 fade-anim" data-delay="0.30" data-direction="left">
                  <div class="destination-box style-2">
                     <div class="destination-thumb">
                        <img src="assets/img/destination/destination-2-1.png" alt="destination" class="w-100" />
                     </div>
                     <div class="destination-content">
                        <div class="info">
                           <h4 class="text-white text-capitalize">
                              <a href="days-tours">Golden Triangle Tours</a>
                           </h4>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-md-6 col-xl-3 fade-anim" data-delay="0.45" data-direction="left">
                  <div class="destination-box style-2">
                     <div class="destination-thumb">
                        <img src="assets/img/destination/destination-2-2.png" alt="destination" class="w-100" />
                     </div>
                     <div class="destination-content">
                        <div class="info">
                           <h4 class="text-white text-capitalize">
                              <a href="days-tours">Rajasthan Tours</a>
                           </h4>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-md-6 col-xl-3 fade-anim" data-delay="0.60" data-direction="left">
                  <div class="destination-box style-2">
                     <div class="destination-thumb">
                        <img src="assets/img/destination/destination-2-3.png" alt="destination" class="w-100" />
                     </div>
                     <div class="destination-content">
                        <div class="info">
                           <h4 class="text-white text-capitalize">
                              <a href="days-tours">South India Tours</a>
                           </h4>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="col-md-6 col-xl-3 fade-anim" data-delay="0.60" data-direction="left">
                  <div class="destination-box style-2">
                     <div class="destination-thumb">
                        <img src="assets/img/destination/destination-2-4.png" alt="destination" class="w-100" />
                     </div>
                     <div class="destination-content">
                        <div class="info">
                           <h4 class="text-white text-capitalize">
                              <a href="days-tours">India Off Beat Tour</a>
                           </h4>
                        </div>
                     </div>
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
               <asp:Repeater ID="dtlTourPackages" runat="server">
                    <ItemTemplate>
                        <div class="col-md-6 col-xl-3">
                          <div class="tour-package-box style-3 bg-white-color">
                             <div class="tour-package-thumb">
                                <img src="images/tours/<%#Eval("Image1") %>" alt="<%# Eval("PackageName")%>" class="w-100" />
                             </div>
                             <div class="tour-package-content">
                                <div class="location">
                                   <i class="fa-sharp fa-light fa-location-dot"></i>
                                   <span><%# Eval("RoadMap")%></span>
                                </div>
                                <h6 class="title line-clamp-2">
                                   <a href="tourpackage-<%# Eval("PageURL")%>"><%# Eval("PackageName")%></a>
                                </h6>
                                <div class="tour-package-footer">
                                   <div class="tour-duration">
                                      <i class="fa-light fa-clock"></i>
                                      <span><%# Eval("PackageDays")%> </span>
                                   </div>
                                   <div class="pricing-info fw-medium">
                                      <a href="tourpackage-<%# Eval("PageURL")%>" class="vs-btn style6 text-capitalize p-2">View Details</a>
                                   </div>
                                </div>
                             </div>
                          </div>
                       </div>                                            
                    </ItemTemplate>
                </asp:Repeater>                
            </div>
            <div class="row">
               <div class="col-12">
                  <div class="text-center space-extra-top btn-trigger btn-bounce">
                     <a href="travel-destinations" class="vs-btn style6 text-capitalize">View More</a>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="vs-exclusive-gallery bg-title-color overflow-hidden" data-bg-src="assets/img/bg/exclusive-gallery-bg.png">
         <div class="vs-exclusive-gallery-wrapper pt-5 pb-5">
            <div class="has-shape"></div>
            <div class="container-fluid p-0 overflow-hidden">
               <div class="row">
                  <div class="col-lg-auto mx-auto">
                     <div class="title-area text-center">
                        <span class="sec-subtitle text-capitalize fade-anim" data-direction="top">Car Rental Services</span>
                        <h2 class="sec-title text-white fade-anim" data-direction="bottom">Car Rental Services</h2>
                     </div>
                  </div>
               </div>
               <div class="row">
                  <div class="col-12">
                     <div class="swiper exclusive-gallery-slider">
                        <div class="swiper-wrapper">
                           <asp:Repeater ID="dtlData" runat="server">
                                <ItemTemplate>
                                   <div class="swiper-slide">
                                      <div class="exclusive-gallery-box">
                                         <a href="#.">
                                            <div class="gallery-thumb">
                                               <img src="images/vehicles/<%# Eval("ImageName")%>" alt="<%# Eval("VehicleName")%>" class="w-100" />
                                            </div>
                                            <h5 class="title line-clamp-2 text-center mt-2"><%# Eval("VehicleName")%></h5>
                                         </a>
                                      </div>
                                   </div>
                                </ItemTemplate>
                            </asp:Repeater>
                           <%--<div class="swiper-slide">
                              <div class="exclusive-gallery-box">
                                 <a href="#.">
                                    <div class="gallery-thumb">
                                       <img src="assets/img/car-rent/01.jpg" alt="gallery" class="w-100" />
                                    </div>
                                    <h5 class="title line-clamp-2 text-center mt-2">Urbania</h5>
                                 </a>
                              </div>
                           </div>
                           <div class="swiper-slide">
                              <div class="exclusive-gallery-box">
                                 <a href="#.">
                                    <div class="gallery-thumb">
                                       <img src="assets/img/car-rent/02.jpg" alt="gallery" class="w-100" />
                                    </div>
                                    <h5 class="title line-clamp-2 text-center mt-2">Ciaz</h5>
                                 </a>
                              </div>
                           </div>
                           <div class="swiper-slide">
                              <div class="exclusive-gallery-box">
                                 <a href="#.">
                                    <div class="gallery-thumb">
                                       <img src="assets/img/car-rent/03.jpg" alt="gallery" class="w-100" />
                                    </div>
                                    <h5 class="title line-clamp-2 text-center mt-2">Bus</h5>
                                 </a>
                              </div>
                           </div>
                           <div class="swiper-slide">
                              <div class="exclusive-gallery-box">
                                 <a href="#.">
                                    <div class="gallery-thumb">
                                       <img src="assets/img/car-rent/04.jpg" alt="gallery" class="w-100" />
                                    </div>
                                    <h5 class="title line-clamp-2 text-center mt-2">Innova</h5>
                                 </a>
                              </div>
                           </div>--%>
                        </div>
                        <div class="exclusive-gallery-slider-pagination"></div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="vs-tour-package space why-choose-sec">
         <div class="container">
            <div class="row justify-content-between align-items-center">
               <div class="col-md-12 text-center">
                  <div class="title-area text-center">
                     <span class="sec-subtitle fade-anim" data-direction="bottom">Why Choose Us?</span>
                     <h2 class="sec-title fade-anim" data-direction="top"> Awesome Trips with us </h2>
                  </div>
               </div>
               <div class="col-md-2 col-sm-6">
                  <div class="wcu-box">
                     <div>
                        <figure>
                           <picture>
                              <source srcset="assets/img/wcs-icon1.png" type="image/webp">
                              <img loading="lazy" src="assets/img/wcs-icon1.png" class="h-auto" alt="100% Satisfied Customers" width="60" height="60">
                           </picture>
                        </figure>
                        <span>100% Satisfied Customers</span>
                     </div>
                  </div>
               </div>
               <div class="col-md-2 col-sm-6">
                  <div class="wcu-box">
                     <div>
                        <figure>
                           <picture>
                              <source srcset="assets/img/wcs-icon2.png" type="image/webp">
                              <img loading="lazy" src="assets/img/wcs-icon2.png" class="h-auto" alt="1000+ Adventures &amp; Activities" width="60" height="60">
                           </picture>
                        </figure>
                        <span>1000+ Adventures &amp; Activities</span>
                     </div>
                  </div>
               </div>
               <div class="col-md-2 col-sm-6">
                  <div class="wcu-box">
                     <div>
                        <figure>
                           <picture>
                              <source srcset="assets/img/wcs-icon3.png" type="image/webp">
                              <img loading="lazy" src="assets/img/wcs-icon3.png" class="h-auto" alt="Amazing Group Tour  Packages" width="60" height="60">
                           </picture>
                        </figure>
                        <span>Amazing Group Tour Packages</span>
                     </div>
                  </div>
               </div>
               <div class="col-md-2 col-sm-6">
                  <div class="wcu-box">
                     <div>
                        <figure>
                           <picture>
                              <source srcset="assets/img/wcs-icon4.png" type="image/webp">
                              <img loading="lazy" src="assets/img/wcs-icon4.png" class="h-auto" alt="Customized Tour Packages" width="60" height="60">
                           </picture>
                        </figure>
                        <span>Customized Tour Packages</span>
                     </div>
                  </div>
               </div>
               <div class="col-md-2 col-sm-6">
                  <div class="wcu-box">
                     <div>
                        <figure>
                           <picture>
                              <source srcset="assets/img/wcs-icon5.png" type="image/webp">
                              <img loading="lazy" src="assets/img/wcs-icon5.png" class="h-auto" alt="24 Hour Services" width="60" height="60">
                           </picture>
                        </figure>
                        <span>24 Hour Services</span>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="testimonial position-relative space" data-bg-src="assets/img/bg/testimonial-bg.png">
         <img src="assets/img/icons/eiffel-tower-dark.png" alt="testimonial-icon" class="testimonial-icon" />
         <div class="container">
            <div class="row">
               <div class="col-lg-auto mx-auto">
                  <div class="title-area text-center">
                     <span class="sec-subtitle fade-anim" data-direction="bottom">Our Testimonials</span>
                     <h2 class="sec-title fade-anim" data-direction="top"> What Customers Say About Us </h2>
                  </div>
               </div>
            </div>
            <div class="row fade-anim">
               <div class="col-xl-10 mx-auto">
                  <div class="row g-4">
                     <div class="col-lg-4">
                        <div class="swiper testimonial-thumbnail-slider">
                           <div class="swiper-wrapper">
                              <div class="swiper-slide">
                                 <div class="testimonial-thumbnail">
                                    <video id="myVideo" autoplay playsinline muted loop>
                                       <source src="assets/img/01.mp4" type="video/mp4">
                                       <source src="movie.ogg" type="video/ogg">
                                    </video>
                                 </div>
                              </div>
                              <div class="swiper-slide">
                                 <div class="testimonial-thumbnail">
                                    <video id="myVideo" autoplay playsinline muted loop>
                                       <source src="assets/img/02.mp4" type="video/mp4">
                                       <source src="movie.ogg" type="video/ogg">
                                    </video>
                                 </div>
                              </div>
                              <div class="swiper-slide">
                                 <div class="testimonial-thumbnail">
                                    <video id="myVideo" autoplay playsinline muted loop>
                                       <source src="assets/img/03.mp4" type="video/mp4">
                                       <source src="movie.ogg" type="video/ogg">
                                    </video>
                                 </div>
                              </div>
                              <div class="swiper-slide">
                                 <div class="testimonial-thumbnail">
                                    <video id="myVideo" autoplay playsinline muted loop>
                                       <source src="assets/img/04.mp4" type="video/mp4">
                                       <source src="movie.ogg" type="video/ogg">
                                    </video>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <script>
                         document.addEventListener('DOMContentLoaded', function () {
                             const video = document.getElementById('myVideo');
                             video.addEventListener('loadedmetadata', function () {
                                 video.muted = false;
                                 video.volume = 1.0;
                                 video.play().catch(error => {
                                     console.error("Autoplay blocked:", error);
                                     video.controls = true;
                                 });
                             });
                             video.addEventListener('ended', function () {
                                 video.currentTime = 0;
                                 video.play().catch(error => console.log("Loop error:", error));
                             });
                         });
                     </script>
                     <div class="col-lg-7 d-lg-flex align-items-lg-center">
                        <!-- Swiper Content Slider -->
                        <div class="swiper testimonial-content-slider">
                           <div class="swiper-wrapper">
                              <div class="swiper-slide">
                                 <div class="testimonial-content">
                                    <i class="fa-solid fa-quote-left"></i>
                                    <div class="rating">
                                       <ul class="custom-ul">
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                       </ul>
                                    </div>
                                    <p class="revew"> “From Towering Waterfalls To Dreamy Cloud Forests, Ecuador Is Where Mother Nature Did Some Of Her Best Work.” </p>
                                    <div class="author">
                                       <h5 class="author-name">Alexandra Dadd</h5>
                                       <span class="author-degi">Journey, CEO</span>
                                    </div>
                                 </div>
                              </div>
                              <div class="swiper-slide">
                                 <div class="testimonial-content">
                                    <i class="fa-solid fa-quote-left"></i>
                                    <div class="rating">
                                       <ul class="custom-ul">
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                       </ul>
                                    </div>
                                    <p class="revew"> “From Towering Waterfalls To Dreamy Cloud Forests, Ecuador Is Where Mother Nature Did Some Of Her Best Work.” </p>
                                    <div class="author">
                                       <h5 class="author-name">Alexandra Dadd</h5>
                                       <span class="author-degi">Journey, CEO</span>
                                    </div>
                                 </div>
                              </div>
                              <div class="swiper-slide">
                                 <div class="testimonial-content">
                                    <i class="fa-solid fa-quote-left"></i>
                                    <div class="rating">
                                       <ul class="custom-ul">
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                       </ul>
                                    </div>
                                    <p class="revew"> “From Towering Waterfalls To Dreamy Cloud Forests, Ecuador Is Where Mother Nature Did Some Of Her Best Work.” </p>
                                    <div class="author">
                                       <h5 class="author-name">Alexandra Dadd</h5>
                                       <span class="author-degi">Journey, CEO</span>
                                    </div>
                                 </div>
                              </div>
                              <div class="swiper-slide">
                                 <div class="testimonial-content">
                                    <i class="fa-solid fa-quote-left"></i>
                                    <div class="rating">
                                       <ul class="custom-ul">
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                          <li>
                                             <i class="fa-solid fa-star"></i>
                                          </li>
                                       </ul>
                                    </div>
                                    <p class="revew"> “From Towering Waterfalls To Dreamy Cloud Forests, Ecuador Is Where Mother Nature Did Some Of Her Best Work.” </p>
                                    <div class="author">
                                       <h5 class="author-name">Alexandra Dadd</h5>
                                       <span class="author-degi">Journey, CEO</span>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <div class="swiper-pagination"></div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="vs-tour-package style-3 bg-third-theme-14 space">
         <div class="container">
            <div class="row justify-content-between align-items-center">
               <div class="col-md-6 col-lg-6 col-xxl-5">
                  <div class="title-area text-center text-md-start">
                     <span class="sec-subtitle fade-anim" data-direction="top">Blogs</span>
                     <h2 class="sec-title fade-anim" data-direction="bottom"> Our Blogs </h2>
                  </div>
               </div>
               <div class="col-md-6 col-lg-6 col-xxl-5">
                  <div class="swiper-arrow2 tour-packages-navigation justify-content-center justify-content-md-end">
                     <button class="tour-packages-next">
                        <svg width="9" height="18" viewBox="0 0 9 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                           <path d="M8.08984 16.92L1.56984 10.4C0.799843 9.62996 0.799843 8.36996 1.56984 7.59996L8.08984 1.07996" stroke="#fff" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                     </button>
                     <button class="tour-packages-prev btn-right">
                        <svg width="9" height="18" viewBox="0 0 9 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                           <path d="M0.910156 16.92L7.43016 10.4C8.20016 9.62996 8.20016 8.36996 7.43016 7.59996L0.910156 1.07996" stroke="#EEDCB3" stroke-width="1.5" stroke-miterlimit="10" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                     </button>
                  </div>
               </div>
               <div class="col-12 mt-30 mt-md-0 fade-anim" data-direction="left">
                  <div class="swiper tour-package-slider">
                     <div class="swiper-wrapper">
                         <asp:Repeater ID="dtlBlogs" runat="server">
                            <ItemTemplate>
                                <div class="swiper-slide">
                                   <div class="tour-package-box bg-white-color">
                                      <div class="tour-package-thumb">
                                         <img src="images/blog/<%#Eval("ImageName") %>" alt="<%#Eval("BlogTitle") %>" class="w-100" />
                                      </div>
                                      <div class="p-3">
                                         <h5 class="title line-clamp-2">
                                            <a href="<%#Eval("PageURL") %>-blog"><%#Eval("BlogTitle") %></a>
                                         </h5>
                                         <a href="<%#Eval("PageURL") %>-blog" class="mt-2 vs-btn style7 w-100">Read More</a>
                                      </div>
                                   </div>
                                </div>                        
                            </ItemTemplate>
                        </asp:Repeater>
                        <%--<div class="swiper-slide">
                           <div class="tour-package-box bg-white-color">
                              <div class="tour-package-thumb">
                                 <img src="assets/img/blog/01.jpg" alt="blog-img" class="w-100" />
                              </div>
                              <div class="p-3">
                                 <h5 class="title line-clamp-2">
                                    <a href="#.">The Best Honeymoon Destination in Rajasthan</a>
                                 </h5>
                                 <a href="#." class="mt-2 vs-btn style7 w-100">Read More</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="tour-package-box bg-white-color">
                              <div class="tour-package-thumb">
                                 <img src="assets/img/blog/02.jpg" alt="blog-img" class="w-100" />
                              </div>
                              <div class="p-3">
                                 <h5 class="title line-clamp-2">
                                    <a href="#.">Best Winter Holiday Destinations in India</a>
                                 </h5>
                                 <a href="#" class="mt-2 vs-btn style7 w-100">Book Now</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="tour-package-box bg-white-color">
                              <div class="tour-package-thumb">
                                 <img src="assets/img/blog/03.jpg" alt="blog-img" class="w-100" />
                              </div>
                              <div class="p-3">
                                 <h5 class="title line-clamp-2">
                                    <a href="#.">Things to know as a First-time Traveller in India</a>
                                 </h5>
                                 <a href="#." class="mt-2 vs-btn style7 w-100">Read More</a>
                              </div>
                           </div>
                        </div>
                        <div class="swiper-slide">
                           <div class="tour-package-box bg-white-color">
                              <div class="tour-package-thumb">
                                 <img src="assets/img/blog/04.jpg" alt="blog-img" class="w-100" />
                              </div>
                              <div class="p-3">
                                 <h5 class="title line-clamp-2">
                                    <a href="#.">Places to Visit on Golden Triangle Tour</a>
                                 </h5>
                                 <a href="#." class="mt-2 vs-btn style7 w-100">Read More</a>
                              </div>
                           </div>
                        </div>--%>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </main>
</asp:Content>