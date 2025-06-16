
Partial Class blog
    Inherits System.Web.UI.Page
    Dim BLL As New BusinessLogicLayer
    Public BannerImage As String = "banner-03.jpg"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            BindData()
        End If
    End Sub


    Sub BindData()
        dtlBlogs.DataSource = BLL.ExecDataTableProc("Prc_GetBlogs", "@Type", 0, "@UserName", System.Configuration.ConfigurationManager.AppSettings("UserName"))
        dtlBlogs.DataBind()
    End Sub


End Class
