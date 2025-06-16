
Partial Class travel_destinations
    Inherits System.Web.UI.Page
    Dim BLL As New BusinessLogicLayer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            BindData()
        End If
    End Sub
    Sub BindData()
        dtlData.DataSource = BLL.ExecDataTable("Select * from tbl_ProductCategory Where TourType='domestic' and Deactivated=0 and UserName='tirupati'")
        dtlData.DataBind()
    End Sub
End Class
