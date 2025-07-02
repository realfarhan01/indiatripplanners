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
      <div class="container vs-contact mt-5">
          <div class="row justify-content-center">
              <div class="col-md-12 index-form">
                  <div action="#." method="post" class="form-style1">
                     <div class="row">
                        <div class="col-md-6 form-group">
                            <asp:TextBox ID="txtName"  class="form-control" placeholder="Enter Your Name*" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="mb-1" ControlToValidate="txtName" ValidationGroup="contact-page" runat="server" ErrorMessage="Please Enter Your Name*"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6 form-group">
                            <asp:TextBox ID="txtMobile" class="form-control" placeholder="Enter Your Phone Number*" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="mb-1" ControlToValidate="txtMobile" ValidationGroup="contact-page" runat="server" ErrorMessage="Please Enter Your Phone Number*"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6 form-group">
                            <asp:TextBox ID="txtEmail" class="form-control" placeholder="Enter Your Email*" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="mb-1" ControlToValidate="txtEmail" ValidationGroup="contact-page" runat="server" ErrorMessage="Please Enter Your Email*"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6 form-group">
                             <asp:DropDownList id="ddlRequirement" name="ddlState" runat="server"  CssClass="form-select nice-select ddlRequirement">
                                <asp:ListItem Value="">Select Tour Packages</asp:ListItem>
                                <asp:ListItem Value="North India">North India</asp:ListItem>
                                <asp:ListItem Value="South India">South India</asp:ListItem>
                                <asp:ListItem Value="Central India">Central India</asp:ListItem>
                                <asp:ListItem Value="North-East India">North-East India</asp:ListItem>
                                <asp:ListItem Value="UAE">UAE</asp:ListItem>
                                <asp:ListItem Value="Thailand">Thailand</asp:ListItem>
                                <asp:ListItem Value="Nepal">Nepal</asp:ListItem>
                                <asp:ListItem Value="Bhutan">Bhutan</asp:ListItem>
                                <asp:ListItem Value="Other">Other</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="mb-1" ControlToValidate="ddlRequirement" ValidationGroup="contact-page" runat="server" ErrorMessage="Please Select Tour Package*"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-12 form-group">
                            <asp:TextBox ID="txtMsg" TextMode="MultiLine" class="form-control" placeholder="Your Message..." runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="mb-1" ControlToValidate="txtMsg" ValidationGroup="contact-page" runat="server" ErrorMessage="Please Enter Your Message...*"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-12 form-group mt-2 mb-0 text-center">
                            <asp:Button formnovalidate="formnovalidate" ID="btnSubmit" ValidationGroup="contact-page" class="vs-btn" runat="server" Text="Submit" />
                        </div>
                     </div>
                  </div>
              </div>
          </div>
      </div>
      <section class="vs-destination-details space">
         <div class="container">
            <div class="row gx-3 gx-xl-5 gy-5">
               <div class="col-lg-8">
                  <div class="vs-destination-single">
                     <div class="row align-items-center gy-3 mb-4">
                        <div class="col-8 col-sm-10">
                           <h5> Information </h5>
                        </div>
                        <p class="text-details"><asp:Literal ID="LitPackageDetails" runat="server"></asp:Literal></p>

                        <div class="col-8 col-sm-10">
                           <h5> Itinerary </h5>
                        </div>
                         <p class="text-details"><asp:Literal ID="LitPackageItinerary" runat="server"></asp:Literal></p>

                        <div class="col-8 col-sm-10">
                           <h5> Inclusion</h5>
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

