Public Class UpdatePage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub Button_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button5.Click
        ' Redirect to Default.aspx
        Response.Redirect("Default.aspx")
    End Sub

    Protected Sub BackButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button9.Click
        ' Redirect to Default.aspx
        Response.Redirect("ManagerPage.aspx")
    End Sub
End Class