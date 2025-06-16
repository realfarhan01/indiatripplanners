
Partial Class car_rental_services
    Inherits System.Web.UI.Page
    Dim BLL As New BusinessLogicLayer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            BindData()
        End If
    End Sub
    Sub BindData()
        Dim rptData As SqlDataReader = BLL.ExecDataReader("Select * from tblCabs Where DeActivated=0")
        dtlData.DataSource = rptData
        dtlData.DataBind()
    End Sub
End Class
