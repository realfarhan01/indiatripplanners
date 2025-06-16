<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="blog-details.aspx.vb" Inherits="blog" %> <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <main class="main">
      <section class="vs-breadcrumb" data-bg-src="assets/img/bg/breadcrumb-bg.png">
         <img src="assets/img/icons/cloud.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-1 animate-parachute" />
         <img src="assets/img/icons/ballon-sclation.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-2 animate-parachute" />
         <div class="container">
            <div class="row text-center">
               <div class="col-12">
                  <div class="breadcrumb-content">
                     <h1 class="breadcrumb-title">blog details</h1>
                  </div>
                  <div class="breadcrumb-menu">
                     <ul class="custom-ul">
                        <li>
                           <a href="index.html">Home</a>
                        </li>
                        <li>blog details</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="space">
         <div class="container">
            <div class="row gx-3 g-4 gx-xl-5 justify-content-center">
               <div class="col-lg-10">
                  <div class="vs-blog vs-blog-box3 blog-single">
                     <div class="blog-img rounded-bottom-0">
                        <asp:Image ID="ImgBlog" CssClass="blogimg" runat="server" />
                     </div>
                     <div class="blog-content">
                       <asp:Literal ID="LitBody" runat="server"></asp:Literal>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </main>
</asp:Content>