<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="contact-us.aspx.vb" Inherits="contact_us" %> <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <main class="main">
      <section class="vs-breadcrumb" data-bg-src="assets/img/bg/breadcrumb-bg.png">
         <img src="assets/img/icons/cloud.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-1 animate-parachute" />
         <img src="assets/img/icons/ballon-sclation.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-2 animate-parachute" />
         <div class="container">
            <div class="row text-center">
               <div class="col-12">
                  <div class="breadcrumb-content">
                     <h1 class="breadcrumb-title">Contact us</h1>
                  </div>
                  <div class="breadcrumb-menu">
                     <ul class="custom-ul">
                        <li>
                           <a href="index.html">Home</a>
                        </li>
                        <li>Contact Us</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="vs-contact space">
         <div class="container">
            <div class="row g-4 gx-xl-5 overflow-hidden">
               <div class="col-lg-5">
                  <div class="title-area text-start mb-2">
                     <span class="sec-subtitle style-2">contact us</span>
                     <h2 class="sec-title">Get in touch with us</h2>
                  </div>
                  <div class="vs-contact-info mt-3 mb-2">
                     <p>
                        <span class="text-theme-color fw-bold">Address:</span> 77, 1st Floor A Block, Dwarka Sector -08, New Delhi 110077. India
                     </p>
                     <div class="vs-contact-list">
                        <div class="contact-item">
                           <span class="icon">
                              <i class="fa-solid fa-phone-volume"></i>
                           </span>
                           <div class="info">
                              <h6 class="info-title">Customer Service :</h6>
                              <p>
                                 <a href="tel:+918743855730">+91 8743-855-730</a>
                              </p>
                           </div>
                        </div>
                        <div class="contact-item">
                           <span class="icon">
                              <i class="fa-light fa-envelope"></i>
                           </span>
                           <div class="info">
                              <h6 class="info-title">careers :</h6>
                              <p>
                                 <a href="mailto:info@indiatripplanners.com">info@indiatripplanners.com</a>
                              </p>
                              <p>
                                 <a href="mailto:indiatriplanners@gmail.com">indiatriplanners@gmail.com</a>
                              </p>
                           </div>
                        </div>
                     </div>
                     <div class="social-follow">
                        <span>Follow Us :</span>
                        <ul class="custom-ul">
                           <li>
                              <a href="https://www.facebook.com/IndiaTripplannerstouroperator" target="_blank">
                                 <i class="fa-brands fa-facebook-f"></i>
                              </a>
                           </li>
                           <li>
                              <a href="https://x.com/indiatrip_plan" target="_blank">
                                 <i class="fa-brands fa-x-twitter"></i>
                              </a>
                           </li>
                           <li>
                              <a href="https://www.instagram.com/india_trip_planners/" target="_blank">
                                 <i class="fa-brands fa-instagram"></i>
                              </a>
                           </li>
                           <li>
                              <a href="https://www.youtube.com/@indiatripplanners" target="_blank">
                                 <i class="fa-brands fa-youtube"></i>
                              </a>
                           </li>
                           <li>
                              <a href="https://in.pinterest.com/Indiatripplannersdelhi/" target="_blank">
                                 <i class="fa-brands fa-pinterest"></i>
                              </a>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
               <div class="col-lg-7">
                  <div action="#." class="form-style1">
                     <div class="row">
                        <div class="col-md-6 form-group">
                           <input name="fname" type="text" class="form-control" placeholder="First Name*" required autocomplete="off" />
                        </div>
                        <div class="col-md-6 form-group">
                           <input name="fname" type="text" class="form-control" placeholder="Last Name*" required />
                        </div>
                        <div class="col-md-6 form-group">
                           <input name="email" type="email" class="form-control" placeholder="Your Email*" required />
                        </div>
                        <div class="col-md-6 form-group">
                           <input name="phone" type="tel" class="form-control" placeholder="Your Phone*" required />
                        </div>
                        <div class="col-12 form-group">
                           <textarea name="message" class="form-control" placeholder="Your Message..." required></textarea>
                        </div>
                        <div class="col-12 form-group mt-2 mb-0">
                           <button class="vs-btn" type="submit">Send Message</button>
                        </div>
                        <p class="form-messages mb-0 mt-3"></p>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <div class="map-layout1">
         <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d56062.18379936468!2d77.029342873961!3d28.57317114440003!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d1b0e3046d655%3A0x27a131cc8ae3fd4f!2sIndia%20Trip%20Planners!5e0!3m2!1sen!2sin!4v1745407622824!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
      </div>
   </main>
</asp:Content>