Imports System.Data.SqlClient
Imports CrystalDecisions.CrystalReports.Engine

Public Class ManagerPage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            PopulateBarberList()
        End If
    End Sub

    Protected Sub PopulateBarberList()
        Dim con As New SqlConnection("Data Source=146.230.177.46;Initial Catalog=GroupWst14;User ID=GroupWst14;Password=9da81")
        Dim cmd As New SqlCommand("SELECT DISTINCT Barber FROM Appointments", con)

        Try
            con.Open()
            Dim dr As SqlDataReader = cmd.ExecuteReader()

            ddlBarber.Items.Add(New ListItem("All Barbers", "All")) ' Add the "All Barbers" option

            While dr.Read()
                ddlBarber.Items.Add(dr("Barber").ToString())
            End While

            dr.Close()
        Catch ex As Exception
            ' Handle any exceptions here
        Finally
            con.Close()
        End Try
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim TS As String = ddlBarber.SelectedValue
        Dim fromDate As DateTime
        Dim toDate As DateTime

        If TS = "All" Then
            ' If "All Barbers" is selected, query for all barbers
            TS = ""
        End If

        If Not DateTime.TryParse(txtFromDate.Text, fromDate) Then
            resultLiteral.Text = "Invalid 'From Date' input."
            Return
        End If

        If Not DateTime.TryParse(txtToDate.Text, toDate) Then
            resultLiteral.Text = "Invalid 'To Date' input."
            Return
        End If

        Dim con As New SqlConnection("Data Source=146.230.177.46;Initial Catalog=GroupWst14;User ID=GroupWst14;Password=9da81")
        Dim cmd As New SqlCommand("Select * from Appointments Where (@Barber = '' OR Barber = @Barber) AND [Date] BETWEEN @FromDate AND @ToDate", con)
        cmd.Parameters.AddWithValue("@Barber", TS)
        cmd.Parameters.AddWithValue("@FromDate", fromDate)
        cmd.Parameters.AddWithValue("@ToDate", toDate)

        Dim ds As New DataSet()
        Dim sda As New SqlDataAdapter(cmd)
        sda.Fill(ds)

        Dim crp As New ReportDocument()
        crp.Load(Server.MapPath("CrystalReport.rpt"))
        crp.SetDataSource(ds.Tables(0))

        ReportViewer.ReportSource = crp

        crp.ExportToHttpResponse(CrystalDecisions.Shared.ExportFormatType.PortableDocFormat, Response, False, "Appointments")
     End Sub


    Protected Sub ReportViewer_Init(sender As Object, e As EventArgs) Handles ReportViewer.Init
        ' Initialization code for the ReportViewer, if needed
    End Sub

    Protected Sub LogoutButton_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button8.Click
        If Page.IsValid Then
            ' Redirect to Default.aspx
            Response.Redirect("Default.aspx")
        End If
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As EventArgs) Handles Button4.Click
        ' Redirect to Default.aspx
        Response.Redirect("UpdatePage.aspx")
    End Sub

End Class


