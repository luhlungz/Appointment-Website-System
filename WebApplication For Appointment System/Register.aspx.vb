Imports System.Data
Imports System.Data.SqlClient

Partial Class Register
    Inherits System.Web.UI.Page

    Protected Sub btnRegister_Click(sender As Object, e As EventArgs) Handles btnRegister.Click
        Dim connectionString As String = "Data Source=146.230.177.46;Initial Catalog=GroupWst14;User ID=GroupWst14;Password=9da81;"

        Using connection As New SqlConnection(connectionString)
            Try
                connection.Open()

                ' Define the SQL query to insert data into the "Customers" table
                Dim insertQuery As String = "INSERT INTO Customers (Name, Surname, PhoneNumber, Email, Address, Password) VALUES (@Name, @Surname, @PhoneNumber, @Email, @Address, @Password)"

                ' Define the SQL query to insert data into the "Customer1" table
                Dim insertQueryCustomer1 As String = "INSERT INTO Customer1 (Customer_Name, Customer_Surname, Customer_Phone_No, Customer_Email, Customer_Address) VALUES (@Customer_Name, @Customer_Surname, @Customer_Phone_No, @Customer_Email, @Customer_Address)"

                Using cmd As New SqlCommand(insertQuery, connection)
                    ' Set parameter values from form inputs
                    cmd.Parameters.AddWithValue("@Name", txtFirstName.Text)
                    cmd.Parameters.AddWithValue("@Surname", surname.Text)
                    cmd.Parameters.AddWithValue("@PhoneNumber", phone.Text)
                    cmd.Parameters.AddWithValue("@Email", email.Text)
                    cmd.Parameters.AddWithValue("@Address", address.Text)
                    cmd.Parameters.AddWithValue("@Password", password.Text)

                    ' Execute the SQL command for the "Customers" table
                    cmd.ExecuteNonQuery()
                End Using

                Using cmdCustomer1 As New SqlCommand(insertQueryCustomer1, connection)
                    ' Set parameter values from form inputs for the "Customer1" table
                    cmdCustomer1.Parameters.AddWithValue("@Customer_Name", txtFirstName.Text)
                    cmdCustomer1.Parameters.AddWithValue("@Customer_Surname", surname.Text)
                    cmdCustomer1.Parameters.AddWithValue("@Customer_Phone_No", phone.Text)
                    cmdCustomer1.Parameters.AddWithValue("@Customer_Email", email.Text)
                    cmdCustomer1.Parameters.AddWithValue("@Customer_Address", address.Text)

                    ' Execute the SQL command for the "Customer1" table
                    cmdCustomer1.ExecuteNonQuery()
                End Using

                ' Optionally, you can provide a success message or redirect to another page.
                Response.Redirect("Login.aspx")
            Catch ex As Exception
                ' Handle any database-related errors
                Response.Write("Error: " & ex.Message)
            End Try
        End Using


    End Sub
End Class



