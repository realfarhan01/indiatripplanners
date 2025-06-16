<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="gallery.aspx.vb" Inherits="gallery" %> <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <main class="main">
      <section class="vs-breadcrumb" data-bg-src="assets/img/bg/breadcrumb-bg.png">
         <img src="assets/img/icons/cloud.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-1 animate-parachute" />
         <img src="assets/img/icons/ballon-sclation.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-2 animate-parachute" />
         <div class="container">
            <div class="row text-center">
               <div class="col-12">
                  <div class="breadcrumb-content">
                     <h1 class="breadcrumb-title">Our Gallery</h1>
                  </div>
                  <div class="breadcrumb-menu">
                     <ul class="custom-ul">
                        <li>
                           <a href="index.html">Home</a>
                        </li>
                        <li>Gallery</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="space">
         <div class="container-fluid">
            <div class="vs-destination-gallery-style1 overflow-hidden">
               <div class="row destination-gallery">
                   <asp:Repeater ID="rptGallary" runat="server">
                        <ItemTemplate>
                            <div class="col-lg-3 mb-3">
                                <div class="destination-gallery-box">
                                    <img src="images/gallarythumbnail/<%# Eval("ImageName")%>" alt="gallery" />
                                    <div class="icon-box">
                                        <a href="images/gallarythumbnail/<%# Eval("ImageName")%>" title="Gallery">
                                            <i class="fa-solid fa-eye"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>              
                        </ItemTemplate>
                    </asp:Repeater>
               </div>
            </div>
         </div>
      </section>
   </main>
</asp:Content>