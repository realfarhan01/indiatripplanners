<%@ Application Language="VB" %>

<script runat="server">

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        System.Net.ServicePointManager.SecurityProtocol = System.Net.SecurityProtocolType.Tls12
        ' Code that runs on application startup
    End Sub

    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs on application shutdown
    End Sub

    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when an unhandled error occurs
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a new session is started
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Code that runs when a session ends. 
        ' Note: The Session_End event is raised only when the sessionstate mode
        ' is set to InProc in the Web.config file. If session mode is set to StateServer 
        ' or SQLServer, the event is not raised.
    End Sub
    Sub Application_BeginRequest(ByVal sender As Object, ByVal e As EventArgs)
        'If Not (Context.Request.IsSecureConnection) Then
        '    Response.Redirect(Context.Request.Url.ToString().Replace("http:", "https:"))
        'End If
        Dim originalPath As String = HttpContext.Current.Request.Path.ToLower()
        Dim sPath As String = System.Web.HttpContext.Current.Request.Url.AbsolutePath.ToLower()
        Dim PageName As String = sPath.Replace("/", "")
        Dim originalPathAcurate As String = HttpContext.Current.Request.Path
        Dim sPathAcurate As String = System.Web.HttpContext.Current.Request.Url.AbsolutePath
        Dim PageNameAcurate As String = sPathAcurate.Replace("/", "")
        Dim CallPage As String = ""
        If Not originalPath.Contains(".jpg") AndAlso Not originalPath.Contains(".png") AndAlso Not originalPath.Contains(".jpeg") Then
            If originalPath.Contains("/packages/golden-triangle-tours") And Not originalPath.Contains("-blog") Then
                Response.Redirect("../golden-triangle-tour-packages")

            ElseIf originalPath.Contains("/packages/rajasthan-tours-packages") And Not originalPath.Contains("-blog") Then
                Response.Redirect("../rajasthan-tour-packages")

            ElseIf originalPath.Contains("/packages/south-india-tours") And Not originalPath.Contains("-blog") Then
                Response.Redirect("../south-india-tour-packages")

            ElseIf originalPath.Contains("/packages/india-off-beat-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("../india-off-beat-tour-packages")

            ElseIf originalPath.Contains("/delhi") And Not originalPath.Contains("/delhi-tour-packages") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/delhi-tour-packages")

            ElseIf originalPath.Contains("/uttar-pradesh") And Not originalPath.Contains("/uttar-pradesh-tour-packages") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/uttar-pradesh-tour-packages")

            ElseIf originalPath.Contains("/rajasthan") And Not originalPath.Contains("/rajasthan-tour-packages") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/rajasthan-tour-packages")

            ElseIf originalPath.Contains("/maharashtra") And Not originalPath.Contains("/maharashtra-tour-packages") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/maharashtra-tour-packages")

            ElseIf originalPath.Contains("/gujarat") And Not originalPath.Contains("/gujarat-tour-packages") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/gujarat-tour-packages")

            ElseIf originalPath.Contains("/west-bengal") And Not originalPath.Contains("/west-bengal-tour-packages") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/west-bengal-tour-packages")

            ElseIf originalPath.Contains("/karnataka") And Not originalPath.Contains("/karnataka-tour-packages") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/karnataka-tour-packages")

            ElseIf originalPath.Contains("/kerala") And Not originalPath.Contains("/kerala-tour-packages") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/kerala-tour-packages")

            ElseIf originalPath.Contains("/tamilnadu") And Not originalPath.Contains("/tamil-nadu-tour-packages") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tamil-nadu-tour-packages")

            ElseIf originalPath.Contains("/golden-triangle-tour-with-khajuraho-varanasi") And Not originalPath.Contains("/tourpackage-9-nights-10-days-days-golden-triangle-tour-with-khajuraho--varanasi") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-9-nights-10-days-days-golden-triangle-tour-with-khajuraho--varanasi")

            ElseIf originalPath.Contains("/golden-triangle-tour-with-varanasi") And Not originalPath.Contains("/tourpackage-8-nights-9-days-golden-triangle-tour-with-varanasi") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-8-nights-9-days-golden-triangle-tour-with-varanasi")

            ElseIf originalPath.Contains("/golden-triangle-tour-with-goa") And Not originalPath.Contains("/tourpackage-8-nights-9-days-golden-triangle-tour-with-varanasi") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-8-nights-9-days-golden-triangle-tour-with-goa")

            ElseIf originalPath.Contains("/golden-triangle-tour-with-mumbai") And Not originalPath.Contains("/tourpackage-8-nights-9-days-golden-triangle-tour-with-mumbai") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-8-nights-9-days-golden-triangle-tour-with-mumbai")

            ElseIf originalPath.Contains("/golden-triangle-tour-with-udaipur") And Not originalPath.Contains("/tourpackage-7-nights-8-days-golden-triangle-tour-with-udaipur") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-7-nights-8-days-golden-triangle-tour-with-udaipur")

            ElseIf originalPath.Contains("/golden-triangle-tour-with-amritsar") And Not originalPath.Contains("/tourpackage-7-nights-8-days-golden-triangle-tour-with-amritsar") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-7-nights-8-days-golden-triangle-tour-with-amritsar")

            ElseIf originalPath.Contains("/golden-triangle-tour-with-pushkar") And Not originalPath.Contains("/tourpackage-6-nights-7-days-golden-triangle-tour-with-pushkar") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-6-nights-7-days-golden-triangle-tour-with-pushkar")

            ElseIf originalPath.Contains("/golden-triangle-tour-with-ranthambore") And Not originalPath.Contains("/tourpackage-7-nights-8-days-golden-triangle-tour-with-ranthambore") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-7-nights-8-days-golden-triangle-tour-with-ranthambore")

            ElseIf originalPath.Contains("/golden-triangle-tour-with-mandawa") And Not originalPath.Contains("/tourpackage-7-nights-8-days-golden-triangle-tour-with-ranthambore") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-6-nights-7-days-golden-triangle-tour-with-mandawa")

            ElseIf originalPath.Contains("/golden-triangle-tour-7-days-tour") And Not originalPath.Contains("/tourpackage-6-nights-7-days-golden-triangle-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-6-nights-7-days-golden-triangle-tour")

            ElseIf originalPath.Contains("/5-nights-6-days-golden-triangle-tour") And Not originalPath.Contains("/tourpackage-5-nights-6-days-golden-triangle-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-5-nights-6-days-golden-triangle-tour")

            ElseIf originalPath.Contains("/golden-triangle-tour-5-days-tour") And Not originalPath.Contains("/tourpackage-4-nights-5-days-golden-triangle-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-4-nights-5-days-golden-triangle-tour")

            ElseIf originalPath.Contains("/golden-triangle-tour-4-days-tour") And Not originalPath.Contains("/tourpackage-3-nights-4-days-golden-triangle-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-3-nights-4-days-golden-triangle-tour")

            ElseIf originalPath.Contains("/udaipur-jodhpur-tours") And Not originalPath.Contains("/tourpackage-5-nights-6-days-jodhpur-udaipur-rajasthan") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-5-nights-6-days-jodhpur-udaipur-rajasthan")

            ElseIf originalPath.Contains("/short-rajasthan-tour") And Not originalPath.Contains("/tourpackage-4-nights-5-days-short-rajasthan-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-4-nights-5-days-short-rajasthan-tour")

            ElseIf originalPath.Contains("/colors-of-rajasthan-tour") And Not originalPath.Contains("/tourpackage-9-nights-10-days-colors-of-rajasthan-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-9-nights-10-days-colors-of-rajasthan-tour")

            ElseIf originalPath.Contains("/regal-rajasthan-tour") And Not originalPath.Contains("/tourpackage-10-nights-11-days-regal-rajasthan-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-10-nights-11-days-regal-rajasthan-tour")

            ElseIf originalPath.Contains("/rajasthan-incredible-tour") And Not originalPath.Contains("/tourpackage-10-nights-11-days-incredible-rajasthan-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-10-nights-11-days-incredible-rajasthan-tour")

            ElseIf originalPath.Contains("/north-india-tour-with-varanasi") And Not originalPath.Contains("/tourpackage-21-nights-22-days-perfect-north-india-tour-with-varanasi") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-21-nights-22-days-perfect-north-india-tour-with-varanasi")

            ElseIf originalPath.Contains("/north-india-tour") And Not originalPath.Contains("/tourpackage-19-nights-20-days-north-india-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-19-nights-20-days-north-india-tour")

            ElseIf originalPath.Contains("/royal-rajasthan-with-varanasi") And Not originalPath.Contains("/tourpackage-15-nights-16-days-royal-rajasthan-with-varanasi") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-15-nights-16-days-royal-rajasthan-with-varanasi")

            ElseIf originalPath.Contains("/rajasthan-cultural-tour-package") And Not originalPath.Contains("/tourpackage-13-nights-14-days-cultural-rajasthan") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-13-nights-14-days-cultural-rajasthan")

            ElseIf originalPath.Contains("/rajasthan-heritage-tour-package") And Not originalPath.Contains("/tourpackage-13-nights-14-days-heritage-of-rajasthan") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-13-nights-14-days-heritage-of-rajasthan")

            ElseIf originalPath.Contains("/rajasthan-heritage-and-culture-tour-Package") And Not originalPath.Contains("/tourpackage-11-nights-12-days-heritage-and-cultural-rajasthan-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-11-nights-12-days-heritage-and-cultural-rajasthan-tour")

            ElseIf originalPath.Contains("/royal-rajasthan-tour-package") And Not originalPath.Contains("/tourpackage-10-nights-11-days-royal-rajasthan-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-10-nights-11-days-royal-rajasthan-tour")

            ElseIf originalPath.Contains("/rajasthan-wildlife-tour-package") And Not originalPath.Contains("/tourpackage-10-nights-11-days-rajasthan-wildlife-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-10-nights-11-days-rajasthan-wildlife-tour")

            ElseIf originalPath.Contains("/rajasthan-honeymoon-tour-package") And Not originalPath.Contains("/tourpackage-9-nights-10-days-rajasthan-honeymoon-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-9-nights-10-days-rajasthan-honeymoon-tour")

            ElseIf originalPath.Contains("/jewel-of-rajasthan-tour") And Not originalPath.Contains("/tourpackage-9-nights-10-days-jewel-of-rajasthan") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-9-nights-10-days-jewel-of-rajasthan")

            ElseIf originalPath.Contains("/rajasthan-exotic-tour-package") And Not originalPath.Contains("/tourpackage-9-nights-10-days-exotic-rajasthan-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-9-nights-10-days-exotic-rajasthan-tour")

            ElseIf originalPath.Contains("/6-nights-7-days-rajasthan-tour-with-taj-mahal") And Not originalPath.Contains("/tourpackage-6-nights-7-days-rajasthan-tour-with-taj-mahal") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-6-nights-7-days-rajasthan-tour-with-taj-mahal")

            ElseIf originalPath.Contains("/8-nights-9-days-taste-of-kerala") And Not originalPath.Contains("/tourpackage-8-nights-9-days-taste-of-kerala") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-8-nights-9-days-taste-of-kerala")

            ElseIf originalPath.Contains("/8-nights-9-days-jewels-of-south-india") And Not originalPath.Contains("/tourpackage-8-nights-9-days-jewels-of-south-india") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-8-nights-9-days-jewels-of-south-india")

            ElseIf originalPath.Contains("/10-nights-11-days-explore-kerala") And Not originalPath.Contains("/tourpackage-10-nights-11-days-explore-kerala") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-10-nights-11-days-explore-kerala")

            ElseIf originalPath.Contains("/12-nights-13-days-tea-and-wildlife-trails") And Not originalPath.Contains("/tourpackage-12-nights-13-days-tea-and-wildlife-trails") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-12-nights-13-days-tea-and-wildlife-trails")

            ElseIf originalPath.Contains("/14-nights-15-days-mystical-south-india-tour") And Not originalPath.Contains("/tourpackage-14-nights-15-days-mystical-south-india-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-14-nights-15-days-mystical-south-india-tour")

            ElseIf originalPath.Contains("/15-nights-16-days-southern-taste-of-india") And Not originalPath.Contains("/tourpackage-15-nights-16-days-southern-taste-of-india") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-15-nights-16-days-southern-taste-of-india")

            ElseIf originalPath.Contains("/18-nights-19-days-kerala-with-a-difference") And Not originalPath.Contains("/tourpackage-18-nights-19-days-kerala-with-a-differenc") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-18-nights-19-days-kerala-with-a-differenc")

            ElseIf originalPath.Contains("/14-nights-15-days-rajasthan-village-tour") And Not originalPath.Contains("/tourpackage-14-nights-15-days-rajasthan-village-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-14-nights-15-days-rajasthan-village-tour")

            ElseIf originalPath.Contains("/13-nights-14-days-museum-tour-of-india") And Not originalPath.Contains("/tourpackage-13-nights-14-days-museum-tour-of-india") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-13-nights-14-days-museum-tour-of-india")

            ElseIf originalPath.Contains("/13-nights-14-days-textile-tour-of-india") And Not originalPath.Contains("/tourpackage-13-nights-14-days-textile-tour-of-india") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-13-nights-14-days-textile-tour-of-india")

            ElseIf originalPath.Contains("/11-nights-12-days-rajasthan-village-and-wildlife-photography-tour") And Not originalPath.Contains("/tourpackage-11-nights-12-days-rajasthan-village-and-wildlife-photography-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-11-nights-12-days-rajasthan-village-and-wildlife-photography-tour")

            ElseIf originalPath.Contains("/9-nights-10-days-architecture-of-gujrat-and-mumbai") And Not originalPath.Contains("/tourpackage-9-nights-10-days-architecture-of-gujrat-and-mumbai") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-9-nights-10-days-architecture-of-gujrat-and-mumbai")

            ElseIf originalPath.Contains("/same-day-delhi-agra-taj-mahal-tour") And Not originalPath.Contains("/tourpackage-same-day-delhi-agra-taj-mahal-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-same-day-delhi-agra-taj-mahal-tour")

            ElseIf originalPath.Contains("/same-day-delhi-sightseeing-tour") And Not originalPath.Contains("/tourpackage-same-day-delhi-sightseeing-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-same-day-delhi-sightseeing-tour")

            ElseIf originalPath.Contains("/same-day-jaipur-tour-from-delhi") And Not originalPath.Contains("/tourpackage-same-day-jaipur-tour-from-delhi") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-same-day-jaipur-tour-from-delhi")

            ElseIf originalPath.Contains("/same-day-jaipur-ranthambore-tour") And Not originalPath.Contains("/tourpackage-same-day-jaipur-ranthambore-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-same-day-jaipur-ranthambore-tour")

            ElseIf originalPath.Contains("/same-day-delhi-food-walk-tour") And Not originalPath.Contains("/tourpackage-same-day-delhi-food-walk-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-same-day-delhi-food-walk-tour")

            ElseIf originalPath.Contains("/same-day-delhi-bicycle-tour") And Not originalPath.Contains("/tourpackage-same-day-delhi-bicycle-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-same-day-delhi-bicycle-tour")

            ElseIf originalPath.Contains("/same-day-jaipur-heritage-tour") And Not originalPath.Contains("/tourpackage-same-day-jaipur-heritage-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-same-day-jaipur-heritage-tour")

            ElseIf originalPath.Contains("/1-nights-2-days-taj-mahal-sunrise-tour") And Not originalPath.Contains("/tourpackage-1-nights-2-days-taj-mahal-sunrise-tour") And Not originalPath.Contains("-blog") Then
                Response.Redirect("/tourpackage-1-nights-2-days-taj-mahal-sunrise-tour")


            ElseIf originalPath.Contains("/contact-us") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "contact-us.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("/india-tour") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "india-tour.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("/webadmin") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "webadmin.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("/car-rental-services") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "car-rental-services.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("/gallery") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "gallery.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "blog-details.aspx?page=" + PageName)
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("explore-") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "destination.aspx?page=" + PageName)
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("tourpackages") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "TourPackageCategories.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("blog") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "blog.aspx")
                Context.RewritePath(CallPage, False)
                'ElseIf originalPath.Contains("departures") And Not originalPath.Contains("-blog") And Not originalPath.Contains("tourdepartures") Then
                '    CallPage = originalPathAcurate.Replace(PageNameAcurate, "departures-new.aspx")
                '    Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("tour-packages") And Not originalPath.Contains("-blog") Then
                'GetAccentedStr = HttpUtility.UrlEncode(PageName)
                'originalPathAcurate = HttpUtility.UrlEncode(originalPathAcurate)
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "tourpackages.aspx?page=" + PageName)
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("tourpackage-") And Not originalPath.Contains("-blog") Then
                'PageName = HttpUtility.UrlEncode(PageName)
                'originalPathAcurate = HttpUtility.UrlEncode(originalPathAcurate)
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "tourpackagedetail.aspx?page=" + PageName)
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("tourdeparture-") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "tourdeparturedetail.aspx?page=" + PageName)
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("activity-") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "activities.aspx?page=" + PageName)
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("exploredestinations") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "exploredestinations.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("booking-rental") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "booking-rental.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("cabservices") And Not originalPath.Contains("-blog") And Not originalPath.Contains("custom") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "cabservices.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("custombooking") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "bookingcustom.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("refund-and-cancellation") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "refund-and-cancellation.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("terms-and-conditions") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "terms-and-conditions.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("payment") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "payment.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("safety-features") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "safety-features.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("travel-destinations") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "travel-destinations.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("india-visa") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "india-visa.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("travel-tips") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "travel-tips.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("fair-and-festivals") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "fair-and-festivals.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("disclaimer") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "disclaimer.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("testimonials") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "testimonials.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("faq") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "faq.aspx")
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("privacy-policy") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "privacy-policy.aspx?page=" + PageName)
                Context.RewritePath(CallPage, False)
            ElseIf originalPath.Contains("about-us") And Not originalPath.Contains("-blog") Then
                CallPage = originalPathAcurate.Replace(PageNameAcurate, "about-us.aspx?page=" + PageName)
                Context.RewritePath(CallPage, False)
                'Else
                '    CallPage = originalPathAcurate.Replace(PageNameAcurate, "index.aspx")
                '    Context.RewritePath(CallPage, False)
            End If
        End If
    End Sub

</script>