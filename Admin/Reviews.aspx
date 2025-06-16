<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="false" ValidateRequest="false" CodeFile="Reviews.aspx.vb" Inherits="Admin_Reviews" %>

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
                <asp:Literal ID="litmsg" runat="server"></asp:Literal>
<asp:Panel ID="Panel1" runat="server" Visible="false">
    <div class="form-horizontal" >
        <div class="panel panel-default">
    <div class="panel-heading">
        <h6 class="panel-title">Latest Reviews</h6>
        <div class="form-actions text-right">
            <asp:Button ID="btnShowData" runat="server" class="btn btn-primary" Text="Show List" />
        </div>
    </div>
            <div class="panel-body">
                <asp:HiddenField ID="hfId" runat="server" />
                <div class="form-group">
                    <label class="col-sm-2 control-label">Name </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txttitle" class="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ReqIntro" runat="server" ControlToValidate="txttitle"
                                ErrorMessage="*" ValidationGroup="UserRegistration">*</asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Review Date </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtDate" class="form-control datepicker" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Picture </label>
                    <div class="col-sm-10">
                        <asp:FileUpload ID="FUImage" runat="server" />
                        <asp:Image ID="Image1" Width="300px" Visible="false" runat="server" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Review </label>
                    <div class="col-sm-10">
                        <asp:TextBox ID="txtContent" class="form-control" TextMode="multiLine" Columns="60" Rows="20" runat="server"></asp:TextBox>
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
                <div class="form-group">
                    <label class="col-sm-2 control-label">Show On Home Page </label>
                    <div class="col-sm-10">
                        <asp:DropDownList ID="ddlShow" class="select-full" runat="server">
                            <asp:ListItem Value="1">Show</asp:ListItem>
                        <asp:ListItem Value="0">Hide</asp:ListItem>
                        </asp:DropDownList>
                                 
                    </div>
                </div>
                <div class="form-actions text-right">
                    <asp:Button ID="btnSubmit" runat="server" ValidationGroup="UserRegistration" class="btn btn-primary" Text="Submit" />
                </div>
            </div>
        </div>
    </div>
</asp:Panel>
<asp:Panel ID="Panel2" runat="server">
    <div class="panel panel-default">
    <asp:HiddenField ID="HiddenField1" runat="server" />
    <div class="panel-heading">
        <h6 class="panel-title">Reviews List</h6>
        <div class="form-actions text-right">
            <asp:Button ID="btnAddNew" runat="server" class="btn btn-primary" Text="Add New" />
        </div>
    </div>
    <div class="table-responsive">
        <asp:GridView ID="DataDisplay" class="table table-bordered table-check" AutoGenerateColumns="false" runat="server">
        <Columns>
            <asp:TemplateField HeaderText="S.No" >
                <ItemTemplate>
                    <%#Container.DataItemIndex + 1%>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Title" HeaderText="Name"></asp:BoundField>
            <asp:BoundField DataField="Dated" HeaderText="Dated"></asp:BoundField>
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <img src="../images/review/<%#Eval("ImageName") %>" width="200px" />
                    <asp:HiddenField ID="hfimg" Value='<%#Eval("ImageName") %>' runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Status" HeaderText="Status"></asp:BoundField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" CommandArgument='<%#Eval("Cnt") %>' CommandName="edit1" runat="server">Edit</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" CommandArgument='<%#Eval("Cnt") %>' CommandName="delete1" runat="server">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</div>
</asp:Panel>

</asp:Content>

