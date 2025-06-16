<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="tourpackagedetail.aspx.vb" Inherits="tourpackagedetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="assets/css/tourpackage.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="vs-breadcrumb" data-bg-src="assets/img/bg/breadcrumb-bg-2.png">
         <img src="assets/img/icons/cloud.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-1 animate-parachute" />
         <img src="assets/img/icons/ballon-sclation.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-2 animate-parachute" />
         <div class="container">
            <div class="row text-center">
               <div class="col-12">
                  <div class="breadcrumb-content">
                     <h1 class="breadcrumb-title"><asp:Literal ID="LitTitle" runat="server"></asp:Literal></h1>
                  </div>
                  <div class="breadcrumb-menu">
                     <ul class="custom-ul">
                        <li>
                           <a href="index.html">Home</a>
                        </li>
                        <li>Tour Details</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>  
      <section class="vs-destination-details space bg-theme-07">
         <div class="container">
            <div class="row gx-3 gx-xl-5 gy-5">
               <div class="col-lg-8">
                  <div class="vs-destination-single">
                     <div class="row align-items-center gy-3 mb-4">
                        <div class="col-8 col-sm-10">
                           <h2 class="destination-single-title"> Information </h2>
                        </div>
                        <p class="text-details"><asp:Literal ID="LitPackageDetails" runat="server"></asp:Literal></p>

                        <div class="col-8 col-sm-10">
                           <h2 class="destination-single-title"> Itinerary </h2>
                        </div>
                         <p class="text-details"><asp:Literal ID="LitPackageItinerary" runat="server"></asp:Literal></p>

                        <div class="col-8 col-sm-10">
                           <h2 class="destination-single-title"> Inclusion</h2>
                        </div>
                        <p class="text-details"><asp:Literal ID="LitPackageInclusion" runat="server"></asp:Literal></p>
                         <asp:Literal ID="LitLocationEmbed" runat="server"></asp:Literal>
                         <%--<asp:Image ID="ImgRoadMap" CssClass="blogimg" runat="server" alt="Road Map" />--%>
                     </div>
                  </div>
               </div>
               <div class="col-lg-4 vs-destination-gallery-style1">
                  <div class="row destination-gallery">
                      <%= GallaryImage %>
                  </div>
               </div>
            </div>
         </div>
      </section>  
      <%--<section class="ot-tour-wrapper space-top space-extra-bottom mt-70">
         <div class="container">
            <div class="row">
               <div class="col-xxl-12">
                  <div class="tour-details">
                     <div class="tour-header">   
                         <div class="col-md-6">
                            <h2 class="tour-title"></h2>
                            <div class="meta-box-wrap mt-3">
                           <div class="meta-box">
                              <div class="meta-box_icon">
                                 <i class="fal fa-location-dot"style="margin-right: 14px;"></i>
                              </div>
                              <div class="media-body">
                                 <h5 class="meta-box_title">Location</h5>
                                 <p class="meta-box_text"><asp:Literal ID="LitRoadMap" runat="server"></asp:Literal></p>
                              </div>
                           </div>
                           <div class="meta-box">
                              <div class="meta-box_icon">
                                 <i class="fas fa-indian-rupee"style="margin-right: 18px;"></i>
                              </div>
                              <div class="media-body">
                                 <h5 class="meta-box_title">From</h5>
                                 <p class="meta-box_text"><asp:Literal ID="LitPackagePricePP" runat="server"></asp:Literal></p>
                              </div>
                           </div>
                           <div class="meta-box">
                              <div class="meta-box_icon">
                                 <i class="fal fa-clock" style="margin-right: 13px;"></i>
                              </div>
                              <div class="media-body">
                                 <h5 class="meta-box_title">Duration</h5>
                                 <p class="meta-box_text">(<asp:Literal ID="LitPackageDays" runat="server"></asp:Literal>)</p>
                              </div>
                           </div>
                        </div>
                        </div>                        
                     </div>                   
                  </div>
               </div>
            </div>
         </div>
      </section>--%>  
</asp:Content>

