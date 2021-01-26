Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Public Class StudentDisplayJobs
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim objCmd As SqlCommand
    Dim strCon As String = ConfigurationManager.ConnectionStrings("TDBConnectionString").ConnectionString
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then

            da = New SqlDataAdapter("SELECT * FROM data_postjobs WHERE Job_id= '" & Session("Jobid") & "' ", strCon)

            ds.Clear()
            da.Fill(ds, "data_postjobs")

            With ds.Tables("data_postjobs").Rows(0)
                Session("Job_id") = .Item("Job_id")
                Session("NameJob") = .Item("NameJob")
                Session("Email") = .Item("Email")
                Session("Phone") = .Item("Phone")
                Session("Position") = .Item("Position")
                Session("Property") = .Item("Property")
                Session("Salary") = .Item("Salary")
                Session("Address") = .Item("Address")
                Session("Latitude") = .Item("Latitude")
                Session("Longitude") = .Item("Longitude")
            End With
            'jobid = Session("Job_id")

            Label8.Text = Session("Jobid")
            Label9.Text = Session("userid")

            Label1.Text = Session("NameJob")
            Label2.Text = Session("Position")
            Label3.Text = Session("Email")
            Label4.Text = Session("Phone")
            Label5.Text = Session("Salary")
            Label6.Text = Session("Property")
            Label7.Text = Session("Address")

            'Dim link2 As String
            'link2 = Session("Map")

            'framemap1.Attributes.Add("src", link2)

            Session("Job_id") = Nothing
            Session("NameJob") = Nothing
            Session("Email") = Nothing
            Session("Phone") = Nothing
            Session("Position") = Nothing
            Session("Property") = Nothing
            Session("Salary") = Nothing
            'Session("Address") = Nothing
            'Session("Latitude") = Nothing
            'Session("Longitude") = Nothing
            Dim a2 = Session("Latitude")
            Dim a3 = Session("Longitude")
            Dim link2 As String = "https://maps.google.com/maps?q=+" + a2 + "," + a3 + "&hl=th&z=12&amp;output=embed"
            ContentIframe.Attributes.Add("src", link2)
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim objConn As New SqlConnection(strCon)
        Dim strSql As String

        'sqlb = "DELETE * from data_userfavoritejobs where user_id = '" & Session("userid") & "'and Job_id = '" & Session("Jobid") & "'"

        objConn = New SqlConnection
        With objConn
            If .State = ConnectionState.Open Then .Close()
            .ConnectionString = strCon
            .Open()
        End With
        'strSql = "DELETE * from data_userfavoritejobs where user_id = '" & Session("userid") & "'and Job_id = '" & Session("Jobid") & "'"
        strSql = "DELETE FROM data_userfavoritejobs WHERE user_id ='" & Session("userid") & "' and Job_id ='" & Session("Jobid") & "'"
        objCmd = New SqlCommand(strSql, objConn)
        With objCmd
            .Connection = objConn
            .CommandText = strSql
            .CommandType = CommandType.Text
            .ExecuteNonQuery()

        End With

        objConn.Close()
        objConn = Nothing

        MsgBox("ยกเลิกในรายการโปรดแล้ว")
        Response.Redirect("StudentFavoriteJobs.aspx")

    End Sub
End Class