Imports System
Imports System.Drawing
Imports System.Drawing.Imaging
Imports System.IO
Imports System.Web
Imports System.Data.SqlClient
Imports iText.Kernel.Pdf
Imports iText.Layout
Imports iText.Layout.Element

Partial Class AppointmentPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        ' Check if the customer's name is provided as a query parameter
        If Not String.IsNullOrEmpty(Request.QueryString("customerName")) Then
            txtName.Text = Request.QueryString("customerName")

        End If
    End Sub


    Protected Sub btnBookAppointment_Click(sender As Object, e As EventArgs) Handles btnBookAppointment.Click
        Dim connectionString As String = "Data Source=146.230.177.46;Initial Catalog=GroupWst14;User ID=GroupWst14;Password=9da81;"

        Dim customer As String = txtName.Text
        Dim tbarber As String = Barber.SelectedItem.Text
        Dim thaircut As String = Haircut.SelectedItem.Text
        Dim time As String = txtTime.Text
        Dim tprice As String = Price.SelectedItem.Text
        Dim [date] As String = txtDate.Text

        ' Check if the appointment already exists for the selected date and time.
        If Not IsAppointmentConflict(connectionString, customer, tbarber, [date], time) Then
            ' No conflict, proceed to insert the appointment.
            Using connection As New SqlConnection(connectionString)
                connection.Open()

                Dim sql As String = "INSERT INTO Appointments (Customer, Barber, Haircut, Time, Price, Date) " &
                                   "VALUES (@Customer, @Barber, @Haircut, @Time, @Price, @Date)"

                Using cmd As New SqlCommand(sql, connection)
                    cmd.Parameters.AddWithValue("@Customer", customer)
                    cmd.Parameters.AddWithValue("@Barber", tbarber)
                    cmd.Parameters.AddWithValue("@Haircut", thaircut)
                    cmd.Parameters.AddWithValue("@Time", time)
                    cmd.Parameters.AddWithValue("@Price", tprice)
                    cmd.Parameters.AddWithValue("@Date", [date])

                    cmd.ExecuteNonQuery()
                End Using
            End Using

            ' Display a success message using JavaScript.
            Dim script As String = "alert('Appointment Successful');"
            ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "AppointmentSuccess", script, True)
            ' Generate the PDF after the success message is displayed
            GeneratePDF(txtName.Text, Barber.SelectedItem.Text, Haircut.SelectedItem.Text, txtTime.SelectedItem.Text, Price.SelectedItem.Text, txtDate.Text)
        Else
            ' There is a booking conflict.
            Dim script As String = "alert('Appointment Conflict: This date and time is already booked by another customer or the selected barber.');"
            ScriptManager.RegisterStartupScript(Me, Me.[GetType](), "AppointmentConflict", script, True)
        End If
End Sub


    Private Sub GeneratePDF(customer As String, tbarber As String, thaircut As String, time As String, tprice As String, [date] As String)
        ' Create a new MemoryStream to store the PDF content
        Using stream As New MemoryStream()
            ' Create a new PdfWriter
            Using writer As New PdfWriter(stream)
                ' Create a new PdfDocument
                Using pdf As New PdfDocument(writer)
                    ' Create a new Document
                    Using document As New Document(pdf)
                        ' Add content to the PDF (customize as needed)
                        document.Add(New Paragraph("Appointment Confirmation"))
                        document.Add(New Paragraph($"Name: {txtName.Text}"))
                        document.Add(New Paragraph($"Barber: {Barber.SelectedItem.Text}"))
                        document.Add(New Paragraph($"Date: {txtDate.Text}"))
                        document.Add(New Paragraph($"Time: {txtTime.SelectedItem.Text}"))
                        document.Add(New Paragraph($"Haircut: {Haircut.SelectedItem.Text}"))
                        document.Add(New Paragraph($"Price: {Price.SelectedItem.Text}"))
                    End Using
                End Using
            End Using

            ' Write the PDF content to the response
            Response.ContentType = "application/pdf"
            Response.AddHeader("content-disposition", "attachment;filename=AppointmentConfirmation.pdf")
            Response.OutputStream.Write(stream.ToArray(), 0, stream.ToArray().Length)
            Response.Flush()
            Response.End()
        End Using
    End Sub

    ' Check if there is a conflict for the given date and time.
    Private Function IsAppointmentConflict(connectionStr As String, customer As String, barber As String, [date] As String, time As String) As Boolean
        Using connection As New SqlConnection(connectionStr)
            connection.Open()

            Dim sql As String = "SELECT COUNT(*) FROM Appointments " &
                               "WHERE Barber = @Barber AND Date = @Date AND Time = @Time"

            Using cmd As New SqlCommand(sql, connection)
                cmd.Parameters.AddWithValue("@Barber", barber)
                cmd.Parameters.AddWithValue("@Date", [date])
                cmd.Parameters.AddWithValue("@Time", time)

                Dim count As Integer = Convert.ToInt32(cmd.ExecuteScalar())
                ' If count is greater than 0, there is a conflict.
                Return count > 0
            End Using
        End Using
    End Function

    Protected Sub LogoutButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button1.Click
        ' Redirect to Default.aspx
        Response.Redirect("Default.aspx")
    End Sub
    ' Other code for your code-behind file
End Class

