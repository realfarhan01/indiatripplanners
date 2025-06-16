<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="car-rental-services.aspx.vb" Inherits="car_rental_services" %> <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <main class="main">
      <section class="vs-breadcrumb" data-bg-src="assets/img/bg/breadcrumb-bg-2.png">
         <img src="assets/img/icons/cloud.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-1 animate-parachute" />
         <img src="assets/img/icons/ballon-sclation.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-2 animate-parachute" />
         <div class="container">
            <div class="row text-center">
               <div class="col-12">
                  <div class="breadcrumb-content">
                     <h1 class="breadcrumb-title">Car & Bus Rental Services</h1>
                  </div>
                  <div class="breadcrumb-menu">
                     <ul class="custom-ul">
                        <li>
                           <a href="/">Home</a>
                        </li>
                        <li>Car & Bus Rental</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="travel-guides  position-relative space" data-bg-src="assets/img/bg/travel-guides-bg.png">
         <img src="assets/img/icons/plain-sclation.png" alt="icon" class="travel-guides-icon-1 animate-parachute" />
         <img src="assets/img/icons/rops.png" alt="icon" class="travel-guides-icon-2 animate-parachute" />
         <div class="container">
            <div class="row">
               <div class="col-lg-auto mx-auto">
                  <div class="title-area text-center">
                     <h2 class="sec-title fade-anim" data-direction="bottom">Hire From Cheap Car Rentals in India For Golden Triangle Holidays</h2>
                  </div>
               </div>
            </div>
            <div class="col-md-12 content-car-rentel">
               <p class="text-theme-color">
                  <b>The Best Car Hire In Delhi With Driver</b>
               </p>
               <p>Indian Trip Planners is one of frontline, experienced and customized car Rental Company in Delhi, providing an extensive range of simplified, branded and modern equipped Car on rent in Delhi with driver. If you’re seeking for the top of the line car services, you search for the avant-garde and pioneer car hiring ends with <b class="text-theme-color">Indian Trip planners</b>. </p>
               <p>Tying up with years of experience, the company promises par excellence and top-notch quality standards in the wake of making your journey as smooth as pancake. <b class="text-theme-color">Delhi Car hire with driver</b> knuckle down a huge backup to provide prompted services and management solutions for a streamlined experience. The company is strongly geared up with fleet of cars, varying from luxury to Non-AC and AC facilities. Harness our powerful mentors, the well-versed cars is maintained and driven by educated, dedicated, trained, generous and bi-lingual driver. </p>
               <p>
                  <b class="text-theme-color">Get Unmatched Car Rental Services Right Here!</b>
               </p>
               <p>Quality assurance and exemplary services is our cornerstone to craft a hassle-free journey long lasting with flying colors. Year after year, we have dealt with several stumbling blocks and helped a huge clientele from diverse needs and expectations. Our devoted drivers are experienced and always exert all endeavors to make your trips to Delhi, a blissful and delightful like a marvel to behold. With the coherent experience, <b class="text-theme-color">Delhi Car hire with driver </b> through all means, guarantees a simpler, easier and straightforwardly voyage to reach at desired destinations on time effortlessly. </p>
               <p>If you’re in hunt of best-rated <b class="text-theme-color">Car hire in Delhi with driver</b> or pick and drop facility from Delhi or spend out weekend tours through Car, spare no expense, as our premium services surely suits you, that seems easy to your pocket. As far as our services, we continuously offer unbeatable, incomparable, unparallel, flawless car rentals that you’ll not sweat over it, rather than speaks highly of our reliable facilities. We bestows the best value to your hard earned money and thus, we render par excellence services at an affordable, convenient rates that doesn’t seem overburdened to your pocket. </p>
               <p>For any assistance, you’re always welcome. We offer what suits you the most. Having a query? You’re just one call away from us. Drop your concerns so that we sought out as soon as possible and build the whole journey merely a cakewalk without any hustle-bustle.</p>
            </div>
            <div class="row g-4">
                <asp:Repeater ID="dtlData" runat="server">
                    <ItemTemplate>
                           <div class="col-md-6 col-lg-4 fade-anim" data-delay="0.60">
                              <div class="guide-box">
                                 <figure class="guide-thumb">
                                    <img src="images/vehicles/<%# Eval("ImageName")%>" alt="<%# Eval("VehicleName")%>" class="w-100" />
                                 </figure>
                                 <div class="guide-content text-center">
                                    <h5 class="guide-name line-clamp-1 text-second-theme-color text-capitalize"> <%# Eval("VehicleName")%> </h5>
                                    <p class="guide-designation line-clamp-1 text-theme-color text-capitalize"><%# Eval("DetailDesc")%></p>
                                 </div>
                              </div>
                           </div>                        
                    </ItemTemplate>
                </asp:Repeater> 
               <%--<div class="col-md-6 col-lg-4 fade-anim" data-delay="0.60">
                  <div class="guide-box">
                     <figure class="guide-thumb">
                        <img src="assets/img/car-rent/01.jpg" alt="guide" class="w-100" />
                     </figure>
                     <div class="guide-content text-center">
                        <h5 class="guide-name line-clamp-1 text-second-theme-color text-capitalize"> Urbania </h5>
                        <p class="guide-designation line-clamp-1 text-theme-color text-capitalize">Passenger, Luggaage, Air Conditioner, GPS Navigation, Air Bags</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-6 col-lg-4 fade-anim" data-delay="0.60">
                  <div class="guide-box">
                     <figure class="guide-thumb">
                        <img src="assets/img/car-rent/04.jpg" alt="guide" class="w-100" />
                     </figure>
                     <div class="guide-content text-center">
                        <h5 class="guide-name line-clamp-1 text-second-theme-color text-capitalize"> Toyota Innova Crysta </h5>
                        <p class="guide-designation line-clamp-1 text-theme-color text-capitalize">Passenger, Luggaage, Air Conditioner, GPS Navigation, Air Bags</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-6 col-lg-4 fade-anim" data-delay="0.60">
                  <div class="guide-box">
                     <figure class="guide-thumb">
                        <img src="assets/img/car-rent/02.jpg" alt="guide" class="w-100" />
                     </figure>
                     <div class="guide-content text-center">
                        <h5 class="guide-name line-clamp-1 text-second-theme-color text-capitalize"> Ciaz </h5>
                        <p class="guide-designation line-clamp-1 text-theme-color text-capitalize">Passenger, Luggaage, Air Conditioner, GPS Navigation, Air Bags</p>
                     </div>
                  </div>
               </div>
               <div class="col-md-6 col-lg-4 fade-anim" data-delay="0.60">
                  <div class="guide-box">
                     <figure class="guide-thumb">
                        <img src="assets/img/car-rent/03.jpg" alt="guide" class="w-100" />
                     </figure>
                     <div class="guide-content text-center">
                        <h5 class="guide-name line-clamp-1 text-second-theme-color text-capitalize"> Bus </h5>
                        <p class="guide-designation line-clamp-1 text-theme-color text-capitalize">Passenger, Luggaage, Air Conditioner, GPS Navigation, Air Bags</p>
                     </div>
                  </div>
               </div>--%>
            </div>
         </div>
      </section>
   </main>
</asp:Content>