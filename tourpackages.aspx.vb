
Partial Class tourpackages
    Inherits System.Web.UI.Page
    Dim BLL As New BusinessLogicLayer
    Public BannerImage As String = "banner-03.jpg"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            BindData()
        End If
    End Sub
    Sub BindData()
        Dim PageName As String = ""
        If Not Request.QueryString("page") Is Nothing Then
            PageName = Request.QueryString("page")
            PageName = PageName.Replace("-tour-packages", "")
            PageName = PageName.Replace("tour-packages", "")
            If PageName <> "" Then
                LitDesc.Text = BLL.ExecScalar("Select ShortDesc from tbl_ProductCategory Where PageURL=@PageURL and DeActivated=0", "@PageURL", PageName)
                Dim PageTitle As String = BLL.ExecScalar("Select ProductCategory from tbl_ProductCategory Where PageURL=@PageURL and DeActivated=0", "@PageURL", PageName)
                BannerImage = BLL.ExecScalar("Select BannerImage from tbl_ProductCategory Where PageURL=@PageURL and DeActivated=0", "@PageURL", PageName)
                If BannerImage <> "" Then
                    BannerImage = "'background-image: url(../images/productcategory/actual/" & BannerImage & ") !important;min-height: 500px !important;'"
                Else
                    BannerImage = "'background-image: url(assets/img/bg/banner-03.jpg) !important;min-height: 500px !important;'"
                End If
                LitPageTitle.Text = PageTitle & " "
                LitPageTitle2.Text = PageTitle & " "
                LitPageTitle3.Text = PageTitle & " "
            Else
                LitPageTitle.Text = "de l'Inde "
                LitPageTitle2.Text = "de l'Inde "
                LitPageTitle3.Text = "de l'Inde "
            End If
        End If
        Dim rptData As SqlDataReader = BLL.GetTourPackages(PageName, "", 0)
        dtlTourPackages.DataSource = rptData
        dtlTourPackages.DataBind()
    End Sub

End Class
