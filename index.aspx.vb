
Partial Class index
    Inherits System.Web.UI.Page
    Dim BLL As New BusinessLogicLayer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            BindBanners()
            'BindTourCategory()
            BindGallery()
            BindThematiques()
            BindTourPackages()
            BindReview()
        End If
        If Not Page.IsPostBack Then
            BindData()
            dtlBlogs.DataSource = BLL.ExecDataTableProc("Prc_GetBlogs", "@Type", 0, "@UserName", System.Configuration.ConfigurationManager.AppSettings("UserName"))
            dtlBlogs.DataBind()
        End If
    End Sub


    Sub BindData()
        Dim rptData As SqlDataReader = BLL.ExecDataReader("Select * from tblCabs Where DeActivated=0")
        dtlData.DataSource = rptData
        dtlData.DataBind()
    End Sub

    Sub BindGallery()
        Dim dtlGallary As SqlDataReader = BLL.ExecDataReader("Select * from tbl_Gallary Where DeActivated=0 and Deleted=0")
        'rptGallary.DataSource = dtlGallary
        'rptGallary.DataBind()
    End Sub
    Sub BindBanners()
        Dim dtlBanners As DataTable = BLL.ExecDataTable("Select * from tblBanners Where Deactivated=0 Order by SNo")
        rptBindBanners.DataSource = dtlBanners
        rptBindBanners.DataBind()
    End Sub
    Sub BindThematiques()
        Dim rptData As SqlDataReader = BLL.ExecDataReader("Select * from tbl_ProductCategory Where Deactivated=0 and ProductCategoryId in (17,18,19,20)")
        'dtlData.DataSource = rptData
        'dtlData.DataBind()
    End Sub
    Sub BindTourPackages()
        Dim rptData As DataTable = BLL.ExecDataTable("Select Top 9 * from tblTourPackages Where ShowOnHomePage=1 and Deactivated=0")
        dtlTourPackages.DataSource = rptData
        dtlTourPackages.DataBind()
    End Sub
    Sub BindReview()
        Dim rptData As SqlDataReader = BLL.ExecDataReader("Select Top 5 *,convert(varchar(20),OnDate,106) Dated from tblReviews Where Deactivated=0 order by OnDate desc")
        'RptReview.DataSource = rptData
        'RptReview.DataBind()
    End Sub
    'Protected Sub btn_contact_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_contact.Click
    '    'If txtCaptcha.Text = "412" Then
    '    Dim pageurl As String = Request.UrlReferrer.ToString
    '    Dim templateVars As New Hashtable()
    '    'templateVars.Add("SenderName", txtName.Text)
    '    'templateVars.Add("Contact", txtMobileNumber.Text)
    '    'templateVars.Add("PickUpLocation", txtPickUpLocation.Text)
    '    'templateVars.Add("DropUpLocation", txtDropUpLocation.Text)
    '    'templateVars.Add("VehicleType", ddlType.SelectedValue)
    '    'templateVars.Add("PickUpDate", txtPickUpDate.Text)
    '    'templateVars.Add("PickUpTime", txtPickUpTime.Text)
    '    templateVars.Add("PageName", pageurl)
    '    templateVars.Add("IPAddress", Request.ServerVariables("remote_addr"))
    '    Email.SendEmail("index_query.htm", templateVars, System.Configuration.ConfigurationManager.AppSettings("email"), System.Configuration.ConfigurationManager.AppSettings("infoemail"), "Contact Enquiry From Website Contact Page", System.Configuration.ConfigurationManager.AppSettings("bccemail"))
    '    'txtName.Text = ""
    '    'txtMobileNumber.Text = ""
    '    'txtMsg.Text = ""
    '    Page.ClientScript.RegisterClientScriptBlock(Me.GetType(), "error", "alert('Your details have been successfully submitted. We will contact you as soon as possible !!');window.location.href='/';", True)
    '    'End If
    'End Sub
End Class
