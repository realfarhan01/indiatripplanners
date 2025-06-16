<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="guest-book.aspx.vb" Inherits="guest_book" %> <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <main class="main">
      <section class="vs-breadcrumb" data-bg-src="assets/img/bg/breadcrumb-bg.png">
         <img src="assets/img/icons/cloud.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-1 animate-parachute" />
         <img src="assets/img/icons/ballon-sclation.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-2 animate-parachute" />
         <div class="container">
            <div class="row text-center">
               <div class="col-12">
                  <div class="breadcrumb-content">
                     <h1 class="breadcrumb-title">What Customers Say</h1>
                  </div>
                  <div class="breadcrumb-menu">
                     <ul class="custom-ul">
                        <li>
                           <a href="index.html">Home</a>
                        </li>
                        <li>Guest Book</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="space">
         <div class="container">
            <div class="row gx-3 g-4 gx-xl-5">
               <div class="col-lg-12">
                  <div class="blog-single">
                     <div class="vs-comments-wrap">
                        <ul class="custom-ul">
                             <asp:Repeater ID="RptTable" runat="server">
                                <ItemTemplate>                
                                     <li class="vs-comment-item">
                                        <div class="vs-post-comment">
                                            <div class="vs-post-comment-inner">
                                            <div class="comment-avater">
                                                <img src="images/review/<%#Eval("ImageName") %>" alt="<%#Eval("Title") %>" />
                                            </div>
                                            <div class="comment-content">
                                                <div class="content-header">
                                                    <h5 class="name"><%#Eval("Title") %></h5>
                                                </div>
                                                <p class="text"> <%#Eval("Review") %></p>
                                            </div>
                                            </div>
                                        </div>
                                    </li> 
                                </ItemTemplate>
                            </asp:Repeater> 
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
   </main>
</asp:Content>