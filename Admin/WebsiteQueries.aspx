<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" CodeFile="WebsiteQueries.aspx.vb" Inherits="Admin_WebsiteQueries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="C1" Runat="Server">
<div class="form-horizontal" >

  <div class="panel panel-default">
                            
                <div class="panel-heading"><h6 class="panel-title">Booking Queries</h6></div>
                <div class="table-responsive">
              
                        <asp:GridView ID="DataDisplay" class="table table-bordered table-check" AllowPaging="true" PageSize="50" AutoGenerateColumns="false" runat="server">
                        <Columns>
                            <asp:TemplateField HeaderText="S.No" >
                                <ItemTemplate>
                                    <%#Container.DataItemIndex + 1%>
                                </ItemTemplate>  
                            </asp:TemplateField>
                            <asp:BoundField DataField="Dated" HeaderText="Dated"></asp:BoundField>
                            <asp:TemplateField ItemStyle-Width="200px">
                                 <HeaderTemplate>Contact Details</HeaderTemplate>
                                 <ItemTemplate>
                                     Contact Name: <%#Eval("Civility") %> <%#Eval("ContactName") %>  <br />
                                     Mobile: <%#Eval("Mobile") %>      <br />
                                     Email Id: <%#Eval("Email") %>    <br />
                                     City: <%#Eval("City") %>    <br />
                                     Country: <%#Eval("Country") %>    
                                 </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField ItemStyle-Width="200px">
                                 <HeaderTemplate>Booking Details</HeaderTemplate>
                                 <ItemTemplate>
                                     Destination: <%#Eval("Destination") %>   <br />
                                     No. of Travelers: <%#Eval("NoOfPerson") %>    <br />  
                                     Check-In Date: <%#Eval("CheckInDate") %>    <br />
                                     Budget: <%#Eval("Budget") %>    <br />
                                     Country: <%#Eval("Country") %>    
                                 </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="IPAddress" HeaderText="IP Address"></asp:BoundField>
                            <asp:BoundField DataField="PageName" HeaderText="Ref Page"></asp:BoundField>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton2" CommandArgument='<%#Eval("Cnt") %>' CommandName="delete1" runat="server">Delete</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                         </Columns>
                        </asp:GridView>
                        </div></div>
</div>
</asp:Content>

