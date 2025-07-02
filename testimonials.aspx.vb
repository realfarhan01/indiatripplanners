
Partial Class testimonials
    Inherits System.Web.UI.Page
    Dim BLL As New BusinessLogicLayer
    Public BannerImage As String = "banner-03.jpg"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            BindData()
        End If
    End Sub
    Sub BindData()
        Dim rptData As SqlDataReader = BLL.ExecDataReader("Select *,convert(varchar(20),OnDate,106) Dated from tblReviews Where Deactivated=0 order by OnDate desc")
        RptTable.DataSource = rptData
        RptTable.DataBind()
    End Sub

End Class
