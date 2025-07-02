
Partial Class photo_gallery
    Inherits System.Web.UI.Page
    Dim BLL As New BusinessLogicLayer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            'BindTourCategory()
            BindGallery()
        End If
    End Sub
    Sub BindGallery()
        Dim dtlGallary As SqlDataReader = BLL.ExecDataReader("Select * from tbl_Gallary Where DeActivated=0 and Deleted=0")
        rptGallary.DataSource = dtlGallary
        rptGallary.DataBind()
    End Sub
End Class
