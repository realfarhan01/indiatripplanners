<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="tourpackages.aspx.vb" Inherits="tourpackages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section class="vs-breadcrumb" style=<%= BannerImage %>>
         <img src="assets/img/icons/cloud.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-1 animate-parachute" />
         <img src="assets/img/icons/ballon-sclation.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-2 animate-parachute" />
         <div class="container">
            <div class="row text-center">
               <div class="col-12">
                  <div class="breadcrumb-content">
                     <h1 class="breadcrumb-title"><asp:Literal ID="LitPageTitle" runat="server"></asp:Literal></h1>
                  </div>
                  <div class="breadcrumb-menu">
                     <ul class="custom-ul">
                        <li>
                           <a href="/">Home</a>
                        </li>
                        <li><asp:Literal ID="LitPageTitle2" runat="server"></asp:Literal></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
    <section class="vs-tour-package space">
         <div class="container">
            <div class="row">
               <div class="col-lg-auto mx-auto">
                  <div class="title-area text-center">
                     <h2 class="sec-title fade-anim" data-direction="top"> <asp:Literal ID="LitPageTitle3" runat="server"></asp:Literal> </h2>
                      <asp:Literal ID="LitDesc" runat="server"></asp:Literal>
                  </div>
               </div>
            </div>
            <div class="row g-4">
                <asp:Repeater ID="dtlTourPackages" runat="server">
                    <ItemTemplate> 
                        <div class="col-md-6 col-xl-4 move-anim">
                          <div class="tour-package-box style-2 bg-white-color">
                             <div class="tour-package-thumb">
                                <img src="images/tours/<%#Eval("Image1") %>" alt="<%# Eval("PackageName")%>" class="w-100" />
                             </div>
                             <div class="tour-package-content">
                                <h5 class="title line-clamp-2">
                                   <a href="tourpackage-<%# Eval("PageURL")%>"><%# Eval("PackageName")%></a>
                                </h5>
                                <div class="tour-package-footer">
                                   <div class="pricing-info fw-medium">
                                      <a href="tourpackage-<%# Eval("PageURL")%>">
                                         <h5 class="new-price">Know More</h5>
                                      </a>
                                   </div>
                                   <a href="tourpackage-<%# Eval("PageURL")%>" class="buy-package">
                                      <i class="fa-regular fa-arrow-right"></i>
                                   </a>
                                </div>
                             </div>
                          </div>
                       </div>
                        <%--<div class="col-md-6 col-lg-4">
                            <div class="service-item wow fadeInUp" data-wow-delay=".25s" style="visibility: visible; animation-delay: 0.25s; animation-name: fadeInUp;">
                                <div class="service-img">
                                    <a href=""><img src="" /></a>
                                </div>
                               <div class="service-content">
                                  <h3 class="service-title">
                                    <a href="tourpackage-<%# Eval("PageURL")%>"></a>
                                  </h3>
                                  <p class="service-text"><i class="fas fa-location-dot"></i> 
                  	                <%# Eval("RoadMap")%>
                                  </p>
                                  <p class="service-text"><i class="fas fa-clock"></i> 
                  	                 <%# Eval("PackageDays")%> 
                                  </p>
                                   <p class="service-text"><i class="fas fa-indian-rupee"></i> 
                                       <%# Eval("PackagePricePP")%>
                                   </p>
                                  <div class="service-arrow">
                                    <a href="" class="theme-btn">View Details<i class="fas fa-arrow-right"></i>
                                    </a>
                                  </div>
                               </div>
                            </div>
                        </div>--%>
                    </ItemTemplate>
                </asp:Repeater>               
            </div>
         </div>
      </section>          
</asp:Content>

