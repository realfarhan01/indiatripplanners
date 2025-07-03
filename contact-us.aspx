<%@ Page Title="" Language="VB" MasterPageFile="~/web.master" AutoEventWireup="false" CodeFile="contact-us.aspx.vb" Inherits="contact_us" %> <asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <main class="main">
      <section class="vs-breadcrumb" data-bg-src="assets/img/bg/breadcrumb-bg.png">
         <img src="assets/img/icons/cloud.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-1 animate-parachute" />
         <img src="assets/img/icons/ballon-sclation.png" alt="vs-breadcrumb-icon" class="vs-breadcrumb-icon-2 animate-parachute" />
         <div class="container">
            <div class="row text-center">
               <div class="col-12">
                  <div class="breadcrumb-content">
                     <h1 class="breadcrumb-title">Contact us</h1>
                  </div>
                  <div class="breadcrumb-menu">
                     <ul class="custom-ul">
                        <li>
                           <a href="index.html">Home</a>
                        </li>
                        <li>Contact Us</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <section class="vs-contact space">
         <div class="container">
            <div class="row g-4 gx-xl-5 overflow-hidden">
               <div class="col-lg-5">
                  <div class="title-area text-start mb-2">
                     <span class="sec-subtitle style-2">contact us</span>
                     <h2 class="sec-title">Get in touch with us</h2>
                  </div>
                  <div class="vs-contact-info mt-3 mb-2">
                     <p>
                        <span class="text-theme-color fw-bold">Address:</span> 77, 1st Floor A Block, Dwarka Sector -08, New Delhi 110077. India
                     </p>
                     <div class="vs-contact-list">
                        <div class="contact-item">
                           <span class="icon">
                              <i class="fa-solid fa-phone-volume"></i>
                           </span>
                           <div class="info">
                              <h6 class="info-title">Customer Service :</h6>
                              <p>
                                 <a href="tel:+918743855730">+91 8743-855-730</a>
                              </p>
                           </div>
                        </div>
                        <div class="contact-item">
                           <span class="icon">
                              <i class="fa-light fa-envelope"></i>
                           </span>
                           <div class="info">
                              <h6 class="info-title">careers :</h6>
                              <p>
                                 <a href="mailto:info@indiatripplanners.com">info@indiatripplanners.com</a>
                              </p>
                              <p>
                                 <a href="mailto:indiatriplanners@gmail.com">indiatriplanners@gmail.com</a>
                              </p>
                           </div>
                        </div>
                     </div>
                     <div class="social-follow">
                        <span>Follow Us :</span>
                        <ul class="custom-ul">
                           <li>
                              <a href="https://www.facebook.com/IndiaTripplannerstouroperator" target="_blank">
                                 <i class="fa-brands fa-facebook-f"></i>
                              </a>
                           </li>
                           <li>
                              <a href="https://x.com/indiatrip_plan" target="_blank">
                                 <i class="fa-brands fa-x-twitter"></i>
                              </a>
                           </li>
                           <li>
                              <a href="https://www.instagram.com/india_trip_planners/" target="_blank">
                                 <i class="fa-brands fa-instagram"></i>
                              </a>
                           </li>
                           <li>
                              <a href="https://www.youtube.com/@indiatripplanners" target="_blank">
                                 <i class="fa-brands fa-youtube"></i>
                              </a>
                           </li>
                           <li>
                              <a href="https://in.pinterest.com/Indiatripplannersdelhi/" target="_blank">
                                 <i class="fa-brands fa-pinterest"></i>
                              </a>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
               <div class="col-lg-7">
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
                                <asp:ListItem Value="">Area Of Interest </asp:ListItem>
                                <asp:ListItem Value="Rent a Private car">Rent a Private car</asp:ListItem>
                                <asp:ListItem Value="Tour Packages">Tour Packages</asp:ListItem>
                                <asp:ListItem Value="Other information">Other information</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="mb-1" ControlToValidate="ddlRequirement" ValidationGroup="contact-page" runat="server" ErrorMessage="Please Select*"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6 form-group">
                             <asp:DropDownList id="ddlTravelers" name="ddlState" runat="server"  CssClass="form-select nice-select ddlRequirement">
                                <asp:ListItem Value="">Number of traveler</asp:ListItem>
                                <asp:ListItem Value="1">1</asp:ListItem>
                                <asp:ListItem Value="2">2</asp:ListItem>
                                <asp:ListItem Value="3">3</asp:ListItem>
                                <asp:ListItem Value="4">4</asp:ListItem>
                                <asp:ListItem Value="5">5</asp:ListItem>
                                <asp:ListItem Value="6">6</asp:ListItem>
                                <asp:ListItem Value="7">7</asp:ListItem>
                                <asp:ListItem Value="8">8</asp:ListItem>
                                <asp:ListItem Value="9">9</asp:ListItem>
                                <asp:ListItem Value="10">10</asp:ListItem>
                                <asp:ListItem Value="11">11</asp:ListItem>
                                <asp:ListItem Value="12">12</asp:ListItem>
                                <asp:ListItem Value="13">13</asp:ListItem>
                                <asp:ListItem Value="14">14</asp:ListItem>
                                <asp:ListItem Value="15">15</asp:ListItem>
                                <asp:ListItem Value="16">16</asp:ListItem>
                                <asp:ListItem Value="17">17</asp:ListItem>
                                <asp:ListItem Value="18">18</asp:ListItem>
                                <asp:ListItem Value="19">19</asp:ListItem>
                                <asp:ListItem Value="20">20</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" CssClass="mb-1" ControlToValidate="ddlTravelers" ValidationGroup="contact-page" runat="server" ErrorMessage="Please Select Travelers*"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-6 form-group">
                             <asp:DropDownList id="ddlHotel" name="ddlState" runat="server"  CssClass="form-select nice-select ddlRequirement">
                                <asp:ListItem Value="">Select Hotel Category</asp:ListItem>
                                <asp:ListItem Value="Five Star">Five Star</asp:ListItem>
                                <asp:ListItem Value="Five Star Heritage Hotel">Five Star Heritage Hotel</asp:ListItem>
                                <asp:ListItem Value="2-3 Star">2-3 Star</asp:ListItem>
                                <asp:ListItem Value="Budget Hotel">Budget Hotel</asp:ListItem>
                                <asp:ListItem Value="Motel">Motel</asp:ListItem>
                                <asp:ListItem Value="Guest House">Guest House</asp:ListItem>
                                <asp:ListItem Value="Paying Guest">Paying Guest</asp:ListItem>
                                <asp:ListItem Value="Accomodation">Accomodation</asp:ListItem>
                                <asp:ListItem Value="Book on your own">Book on your own</asp:ListItem>
                                <asp:ListItem Value="Not Required">Not Required</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" CssClass="mb-1" ControlToValidate="ddlHotel" ValidationGroup="contact-page" runat="server" ErrorMessage="Please Select Hotel*"></asp:RequiredFieldValidator>
                        </div>
                        
                        <div class="col-md-6 form-group">
                            <asp:TextBox ID="txtDateArr" class="form-control" runat="server" placeholder="Arrival Date*"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" CssClass="mb-1" ControlToValidate="txtDateArr" ValidationGroup="contact-page" runat="server" ErrorMessage="Please Select Arrival Date*"></asp:RequiredFieldValidator>
                        </div>

                        <div class="col-md-6 form-group">
                            <asp:TextBox ID="txtDateDep" class="form-control" runat="server" placeholder="Departure Date*"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" CssClass="mb-1" ControlToValidate="txtDateDep" ValidationGroup="contact-page" runat="server" ErrorMessage="Please Select Departure Date*"></asp:RequiredFieldValidator>
                        </div>
                        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                        <script>
                            $(function () {
                                $("#<%= txtDateArr.ClientID %>").datepicker({
                                    dateFormat: "dd/mm/yy",
                                    minDate: 0
                                });
                                $("#<%= txtDateDep.ClientID %>").datepicker({
                                    dateFormat: "dd/mm/yy",
                                    minDate: 0
                                });
                            });
                        </script>

                        <div class="col-12 form-group">
                            <asp:TextBox ID="txtMsg" TextMode="MultiLine" class="form-control" placeholder="Your Message..." runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" CssClass="mb-1" ControlToValidate="txtMsg" ValidationGroup="contact-page" runat="server" ErrorMessage="Please Enter Your Message...*"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-12 form-group mt-2 mb-0">
                            <asp:Button formnovalidate="formnovalidate" ID="btnSubmit" ValidationGroup="contact-page" class="vs-btn" runat="server" Text="Submit" />
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <div class="map-layout1">
         <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d56062.18379936468!2d77.029342873961!3d28.57317114440003!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x390d1b0e3046d655%3A0x27a131cc8ae3fd4f!2sIndia%20Trip%20Planners!5e0!3m2!1sen!2sin!4v1745407622824!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
      </div>
   </main>
</asp:Content>