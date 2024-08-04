Public Class HaircutPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub LoginButton_Click(sender As Object, e As EventArgs)
        ' This method is called when the "Login" button is clicked.
        ' You can add any custom logic here if needed.
        ' For now, we are simply redirecting to the Login page.
        Response.Redirect("~/Login.aspx")
    End Sub
End Class