Imports System.Data
Imports System.Data.SqlClient

Partial Class Login
    Inherits System.Web.UI.Page

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click
        Dim connectionString As String = "Data Source=146.230.177.46;Initial Catalog=GroupWst14;User ID=GroupWst14;Password=9da81;"

        Using connection As New SqlConnection(connectionString)
            Try
                connection.Open()

                ' Query to check if the email and password match a record in the database
                Dim selectQuery As String = "SELECT Name FROM Customers WHERE Email = @Email AND Password = @Password"

                Using cmd As New SqlCommand(selectQuery, connection)
                    ' Set parameters from form inputs
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text)
                    cmd.Parameters.AddWithValue("@Password", txtPassword.Text)

                    ' Execute the query and get the customer's name
                    Dim customerName As String = Convert.ToString(cmd.ExecuteScalar())

                    ' Check if a record with the provided email and password exists
                    If Not String.IsNullOrEmpty(customerName) Then
                        ' Check if the email and password match the specific values for redirection
                        If txtEmail.Text = "assia@gmail.com" AndAlso txtPassword.Text = "malawi2" Then
                            ' Redirect to the ManagerDashboard.aspx
                            Response.Redirect("ManagerPage.aspx")
                        Else
                            ' Redirect to the AppointmentPage and pass the customer's name as a query parameter
                            Response.Redirect("AppointmentPage.aspx?customerName=" & Server.UrlEncode(customerName))
                        End If
                    Else
                        ' Display an error message for unsuccessful login
                        lblError.Text = "Invalid email or password."
                    End If
                End Using
            Catch ex As Exception
                ' Handle any database-related errors
                Response.Write("Error: " & ex.Message)
            End Try
        End Using
    End Sub

End Class






