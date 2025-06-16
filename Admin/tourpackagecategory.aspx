<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" ValidateRequest="false" CodeFile="tourpackagecategory.aspx.vb" Inherits="Admin_tourpackagemaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" src="tinymce/tinymce.min.js"></script>
<script type="text/javascript">
    tinymce.init({
        selector: 'textarea',
        plugins: [
        "textcolor colorpicker fullscreen"
        ],
        toolbar: 'undo redo | formatselect | forecolor backcolor | ' +
        'bold italic backcolor | alignleft aligncenter ' +
        'alignright alignjustify | bullist numlist outdent indent | ' +
        'removeformat | help',
        paste_retain_style_properties : "margin, padding, width, height, font-size, font-weight, font-family, color, text-align, ul, ol, li, text-decoration, border, background, float, display",
        paste_enable_default_filters: false,
        paste_remove_styles_if_webkit: false,
        paste_remove_spans: true,
        paste_remove_styles: true,
        fix_list_elements: false,
          cleanup_on_startup : true,
        fix_nesting : false,
        fix_table_elements : false,
        paste_use_dialog: true,
        paste_auto_cleanup_on_paste: true,
        format_empty_lines: true,
        content_style: 'body { font-family:Helvetica,Arial,sans-serif; font-size:14px }'
    });
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="C1" Runat="Server">
    <div class="form-horizontal" >
        <div class="panel panel-default" id="div1" runat="server">
            <div class="panel-heading"><h6 class="panel-title">Tour Package Category Master</h6> </div>
            <div class="panel-body">
                <asp:HiddenField ID="hfId" runat="server" />
                <%-- <div class="alert alert-info fade in widget-inner">
                    <button type="button" class="close" data-dismiss="alert">×</button>
                    Default form components, including bootstrap additions and tags
                </div>--%>
                <asp:Literal ID="litmsg" runat="server"></asp:Literal>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Tour Types</label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddlTourType" class="select-full" runat="server">
                            <asp:ListItem Value="domestic">Domestic</asp:ListItem>
                            <asp:ListItem Value="international">International</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Category </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtProductCategory" class="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Image [1000x625]</label>
                    <div class="col-sm-10">
                        <asp:FileUpload ID="FileUpload" CssClass="default" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Banner Image [1920x500]</label>
                    <div class="col-sm-10">
                        <asp:FileUpload ID="FUBanner" CssClass="default" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Category Description </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtShortDesc" class="form-control" Height="100px" TextMode="MultiLine" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Status </label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddlStatus" class="select-full" runat="server">
                            <asp:ListItem Value="0">Active</asp:ListItem>
                            <asp:ListItem Value="1">Deactive</asp:ListItem>
                        </asp:DropDownList>  
                    </div>
                </div>
                <div class="form-actions text-right">
                    <asp:Button ID="btnSubmit" runat="server" ValidationGroup="UserRegistration" class="btn btn-primary" Text="Submit" />
                </div>
            </div>
        </div>
        <div class="panel panel-default" id="div2" runat="server">
            <asp:HiddenField ID="HiddenField1" runat="server" />
            <div class="panel-heading"><h6 class="panel-title">Category List</h6>
                <span style="text-align:right;display:block;">
                    <asp:Button ID="btnAdd" runat="server" Text="Add New" CssClass="btn btn-primary" />
                </span>
            </div>
            <div class="table-responsive">
                <asp:GridView ID="DataDisplay" class="table table-bordered table-check" AutoGenerateColumns="false" runat="server">
                    <Columns>
                        <asp:TemplateField HeaderText="S.No" >
                            <ItemTemplate>
                                <%#Container.DataItemIndex + 1%>
                            </ItemTemplate>                           
                        </asp:TemplateField>
                        <asp:TemplateField ItemStyle-Width="200px">
                            <HeaderTemplate>Product Category</HeaderTemplate>
                            <ItemTemplate>
                                <%#Eval("ProductCategory") %>                                                        
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>Tour Types</HeaderTemplate>
                            <ItemTemplate>
                                <%#Eval("TourType") %>  
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <a href='../images/productcategory/<%#Eval("ProductCategoryImage") %>' target="_blank" >
                            <img style="width:150px" alt="" src='../images/productcategory/<%#Eval("ProductCategoryImage") %>'></img></a>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <HeaderTemplate>Description</HeaderTemplate>
                            <ItemTemplate>
                                <%#Eval("ShortDesc") %>                                                        
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Status" HeaderText="Status"></asp:BoundField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton3" CommandArgument='<%#Eval("ProductCategoryId") %>' CommandName="Deactivate1" runat="server">Edit</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>                         
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" CommandArgument='<%#Eval("ProductCategoryId") %>' CommandName="Delete1" runat="server">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>

