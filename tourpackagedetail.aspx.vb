
Partial Class tourpackagedetail
    Inherits System.Web.UI.Page
    Dim BLL As New BusinessLogicLayer
    Public PackagePricePP As String = ""
    Public GallaryImage As String = ""
    Public SliderImage As String = ""
    Public PackageId As String = "0"
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            If Not Page.IsPostBack Then
                Dim PageName As String = ""
                If Not Request.QueryString("page") Is Nothing Then
                    PageName = Request.QueryString("page")
                    PageName = PageName.Replace("tourpackage-", "")
                    Dim dr As SqlDataReader = BLL.GetTourPackages("", PageName, 0)
                    While dr.Read
                        PackageId = dr("PackageId").ToString()
                        Page.Title = dr("PackageName").ToString()
                        Page.MetaDescription = dr("ShortDesc").ToString()
                        Page.MetaKeywords = dr("PackageName").ToString()
                        LitTitle.Text = dr("PackageName").ToString()
                        'LitPackageDays.Text = dr("PackageDays").ToString()
                        'LitRoadMap.Text = dr("RoadMap").ToString()
                        'LitRoadMap.Text = dr("RoadMap").ToString()
                        'LitPackagePricePP.Text = dr("PackagePricePP").ToString()
                        LitPackageItinerary.Text = dr("PackageItinerary").ToString()
                        LitPackageInclusion.Text = dr("PackageInclusion").ToString()
                        LitLocationEmbed.Text = dr("LocationEmbed").ToString()
                        LitPackageDetails.Text = dr("PackageDesc").ToString()
                        If dr("Image1").ToString() <> "" Then
                            SliderImage = "<div id='slider'><div class='slide'><img src='images/tours/" & dr("Image1").ToString() & "'/></div></div>"
                        End If
                        If dr("Image2").ToString() <> "" Then
                            SliderImage += "<div id='slider'><div class='slide'><img src='images/tours/" & dr("Image2").ToString() & "'/></div></div>"
                        End If
                        If dr("Image3").ToString() <> "" Then
                            SliderImage += "<div id='slider'><div class='slide'><img src='images/tours/" & dr("Image3").ToString() & "'/></div></div>"
                        End If
                        If dr("Image4").ToString() <> "" Then
                            SliderImage += "<div id='slider'><div class='slide'><img src='images/tours/" & dr("Image4").ToString() & "'/></div></div>"
                        End If
                        If dr("TourImg1").ToString() <> "" Then
                            GallaryImage = "<div Class='col-md-12 mb-3'><div Class='destination-gallery-box'><img src='images/tours/" & dr("TourImg1").ToString() & "' /><div class='icon-box'><a href='images/tours/" & dr("TourImg1").ToString() & "' title='Gallery'><i class='fa-solid fa-eye'></i></a></div></div></div>"
                        End If
                        If dr("TourImg2").ToString() <> "" Then
                            GallaryImage += "<div Class='col-md-12 mb-3'><div Class='destination-gallery-box'><img src='images/tours/" & dr("TourImg2").ToString() & "' /><div class='icon-box'><a href='images/tours/" & dr("TourImg2").ToString() & "' title='Gallery'><i class='fa-solid fa-eye'></i></a></div></div></div>"
                        End If
                        If dr("TourImg3").ToString() <> "" Then
                            GallaryImage += "<div Class='col-md-12 mb-3'><div Class='destination-gallery-box'><img src='images/tours/" & dr("TourImg3").ToString() & "' /><div class='icon-box'><a href='images/tours/" & dr("TourImg3").ToString() & "' title='Gallery'><i class='fa-solid fa-eye'></i></a></div></div></div>"
                        End If
                        If dr("TourImg4").ToString() <> "" Then
                            GallaryImage += "<div Class='col-md-12 mb-3'><div Class='destination-gallery-box'><img src='images/tours/" & dr("TourImg4").ToString() & "' /><div class='icon-box'><a href='images/tours/" & dr("TourImg4").ToString() & "' title='Gallery'><i class='fa-solid fa-eye'></i></a></div></div></div>"
                        End If
                        If dr("TourImg5").ToString() <> "" Then
                            GallaryImage += "<div Class='col-md-12 mb-3'><div Class='destination-gallery-box'><img src='images/tours/" & dr("TourImg5").ToString() & "' /><div class='icon-box'><a href='images/tours/" & dr("TourImg5").ToString() & "' title='Gallery'><i class='fa-solid fa-eye'></i></a></div></div></div>"
                        End If
                        If dr("TourImg6").ToString() <> "" Then
                            GallaryImage += "<div Class='col-md-12 mb-3'><div Class='destination-gallery-box'><img src='images/tours/" & dr("TourImg6").ToString() & "' /><div class='icon-box'><a href='images/tours/" & dr("TourImg6").ToString() & "' title='Gallery'><i class='fa-solid fa-eye'></i></a></div></div></div>"
                        End If


                        PackagePricePP = dr("PackagePricePP").ToString()
                        'ImgBlog.ImageUrl = "images/tours/actual/" & dr("ImageName").ToString()
                        'ImgRoadMap.ImageUrl = "images/tours/" & dr("RoadMapImg").ToString()
                    End While
                End If

                'Dim website As String = System.Configuration.ConfigurationManager.AppSettings("url")
                'Dim pageurl As String = PageName
                'Dim username As String = System.Configuration.ConfigurationManager.AppSettings("UserName")
                'Dim IPAddress As String = Request.ServerVariables("REMOTE_ADDR")
                'If IPAddress <> "127.0.0.1" Then
                '    Dim IPLocation As String = BLL.IPLocation()
                '    Dim Location As String = geospilt(IPLocation, 4).ToString() & " - Latitude : " & geospilt(IPLocation, 8).ToString() & ", Longitude : " & geospilt(IPLocation, 9).ToString()
                '    BLL.SaveWebsiteHit(website, pageurl, username, IPAddress, Location)
                'End If
            End If
        Catch ex As Exception
            Response.Write(ex.ToString())
        End Try
    End Sub
    Public Function geospilt(ByVal IPLocation As String, ByVal Number As Integer) As String
        Dim location, ReturnData As String
        location = IPLocation
        Dim arr As Array
        arr = location.Split(";")
        ReturnData = arr(Number)
        Return ReturnData
    End Function
    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        If Page.IsValid Then
            Try
                If validation.isMobileNumber(txtMobile.Text) Then

                    Dim BLL As New BusinessLogicLayer()
                    Dim pageurl As String = Request.UrlReferrer.ToString
                    Dim templateVars As New Hashtable()
                    templateVars.Add("Name", txtName.Text)
                    templateVars.Add("Contact", txtMobile.Text)
                    templateVars.Add("Email", txtEmail.Text)
                    templateVars.Add("Message", txtMsg.Text)
                    templateVars.Add("PageName", pageurl)
                    templateVars.Add("Requirement", ddlRequirement.SelectedValue)
                    templateVars.Add("IPAddress", Request.ServerVariables("remote_addr"))
                    BLL.ExecNonQueryProc("Prc_WebsiteQuery", "@Name", txtName.Text, "@EmailId", txtEmail.Text, "@ContactNo", txtMobile.Text, "@Destination", ddlRequirement.SelectedValue, "@Duration", txtMsg.Text, "@PageName", pageurl, "@IP", Request.ServerVariables("remote_addr"))

                    Email.SendEmail("contact_email.htm", templateVars, System.Configuration.ConfigurationManager.AppSettings("email"), System.Configuration.ConfigurationManager.AppSettings("infoemail"), "Contact Enquiry From Website")
                    txtName.Text = ""
                    txtMsg.Text = ""
                    txtMobile.Text = ""
                    Page.ClientScript.RegisterClientScriptBlock(Me.GetType(), "error", "alert('Your details has been submited successfully. We will contact you as soon!!');window.location.href='/';", True)
                End If
            Catch ex As Exception

            End Try
        End If
    End Sub
End Class
