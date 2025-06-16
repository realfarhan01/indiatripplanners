<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="blog.aspx.vb" Inherits="blog" %> <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <main class="main">
      <section class="vs-breadcrumb" data-bg-src="assets/img/bg/breadcrumb-bg.png">
         <img src="assets/img/icons/cloud.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-1 animate-parachute" />
         <img src="assets/img/icons/ballon-sclation.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-2 animate-parachute" />
         <div class="container">
            <div class="row text-center">
               <div class="col-12">
                  <div class="breadcrumb-content">
                     <h1 class="breadcrumb-title">Our Blogs</h1>
                  </div>
                  <div class="breadcrumb-menu">
                     <ul class="custom-ul">
                        <li>
                           <a href="index.html">Home</a>
                        </li>
                        <li>Blogs</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="blog-style2 space">
         <div class="container">
            <div class="row">
               <div class="col-lg-auto mx-auto">
                  <div class="title-area text-center">
                     <span class="sec-subtitle text-capitalize fade-anim" data-direction="top">Our Blog</span>
                     <h2 class="sec-title fade-anim" data-direction="bottom"> latest Blogs </h2>
                  </div>
               </div>
            </div>
            <div class="row g-4">
                <asp:Repeater ID="dtlBlogs" runat="server">
                    <ItemTemplate>
                         <div class="col-md-6 col-xl-4 move-anim">
                          <div class="vs-blog-box2">
                             <figure class="blog-thumb">
                                <img src="images/blog/<%#Eval("ImageName") %>" alt="<%# Eval("BlogTitle")%>" class="w-100" />
                             </figure>
                             <div class="blog-content">
                                <div class="blog-info">
                                   <h5 class="post-title line-clamp-2">
                                      <a href="<%#Eval("PageURL") %>-blog" title="Discover our luxury tour thailand & vietnam"><%# Eval("BlogTitle")%></a>
                                   </h5>
                                    <p><%#Eval("MetaDescription") %></p>
                                </div>
                                <div class="blog-content-footer">
                                   <a href="<%#Eval("PageURL") %>-blog" class="read-more"> Read More <i class="fa-solid fa-long-arrow-right"></i>
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
   </main>
</asp:Content>