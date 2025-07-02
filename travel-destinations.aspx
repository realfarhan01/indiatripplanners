<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="travel-destinations.aspx.vb" Inherits="travel_destinations" %> <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <main class="main">
      <section class="vs-breadcrumb" data-bg-src="assets/img/bg/breadcrumb-bg.png">
         <img src="assets/img/icons/cloud.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-1 animate-parachute" />
         <img src="assets/img/icons/ballon-sclation.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-2 animate-parachute" />
         <div class="container">
            <div class="row text-center">
               <div class="col-12">
                  <div class="breadcrumb-content">
                     <h1 class="breadcrumb-title">Top Indian Travel Destinations</h1>
                  </div>
                  <div class="breadcrumb-menu">
                     <ul class="custom-ul">
                        <li>
                           <a href="/">Home</a>
                        </li>
                        <li>Travels Destinations</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="vs-destination space">
         <div class="container">
            <div class="row gx-3 gy-3">
                <asp:Repeater ID="dtlData" runat="server">
                    <ItemTemplate> 
                        <div class="col-md-6 col-lg-3">
                          <div class="destination-box-2">
                             <figure class="destination-thumb">
                                <img src="images/productcategory/<%#Eval("ProductCategoryImage") %>" alt="<%# Eval("ProductCategory")%>" class="w-100" />
                             </figure>
                             <div class="destination-content">
                                <h5 class="title">
                                   <a href="<%# Eval("PageURL")%>-tour-packages"><%# Eval("ProductCategory")%></a>
                                </h5>
                             </div>
                          </div>
                       </div>
                    </ItemTemplate>
                </asp:Repeater>             
            </div>
         </div>
      </section>
   </main>
</asp:Content>