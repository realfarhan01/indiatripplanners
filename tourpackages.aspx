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
                     <h2 class="sec-title fade-anim mb-4" data-direction="top"> <asp:Literal ID="LitPageTitle3" runat="server"></asp:Literal> </h2>
                      <asp:Literal ID="LitDesc" runat="server"></asp:Literal>
                  </div>
               </div>
            </div>
            <div class="row g-4 mt-3">
                <asp:Repeater ID="dtlTourPackages" runat="server">
                    <ItemTemplate> 
                        <div class="col-md-6 col-xl-3 move-anim">
                          <div class="tour-package-box style-2 bg-white-color">
                             <div class="tour-package-thumb">
                                <img src="images/tours/<%#Eval("Image1") %>" alt="<%# Eval("PackageName")%>" class="w-100" />
                             </div>
                             <div class="tour-package-content">
                                <h6 class="title line-clamp-2">
                                   <a href="tourpackage-<%# Eval("PageURL")%>"><%# Eval("PackageName")%></a>
                                </h6>
                                <div class="tour-package-footer">
                                   <div class="pricing-info fw-medium">
                                      <a href="tourpackage-<%# Eval("PageURL")%>">
                                         <h5 class="new-price">View Details</h5>
                                      </a>
                                   </div>
                                   <a href="tourpackage-<%# Eval("PageURL")%>" class="buy-package">
                                      <i class="fa-regular fa-arrow-right"></i>
                                   </a>
                                </div>
                             </div>
                          </div>
                       </div>
                    </ItemTemplate>
                </asp:Repeater>               
            </div>
         </div>
      </section>          
</asp:Content>

