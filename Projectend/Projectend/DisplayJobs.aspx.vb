Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Public Class DisplayJobs
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    'Dim strCon As String = WebConfigurationManager.ConnectionStrings("desktop-mgeob2p\sqlexpress.ProjectEnd.dbo").ConnectionString
    Dim strCon As String = ConfigurationManager.ConnectionStrings("TDBConnectionString").ConnectionString
    Dim us As String
    Dim jobid As String
    Dim userfavid As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        userfavid = autokeyidmem()
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
            'Label9.Text = Session("userid")

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
    Public Function autokeyidmem() As String
        Dim objConn As New SqlConnection(strCon)
        Dim objcmd As New SqlCommand()
        Dim iMAX As Integer = 1
        Dim intNum As String = "F"
        Dim cmd As New SqlCommand
        With cmd
            .Connection = objConn
            .CommandText = "SELECT MAX(RIGHT(userfavoritejobs_id,3)) As userfavoritejobs_id FROM [data_userfavoritejobs]"
            objConn.ConnectionString = strCon
            objConn.Open()
            If IsDBNull(.ExecuteScalar()) = True Then
                intNum = "F" & "00" & iMAX

            Else
                iMAX = .ExecuteScalar() + 1
            End If

            If iMAX <= 9 Then
                intNum = "F" & "00" & iMAX
            ElseIf iMAX <= 99 Then
                intNum = "F" & "0" & iMAX

            ElseIf iMAX <= 999 Then
                intNum = "F" & iMAX
            End If
        End With
        objConn.Close()
        Return intNum
    End Function

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        'Dim intCount As Integer
        'Dim Conn As New SqlConnection(strCon)
        'Conn.Open()
        'Dim sql As String = "SELECT COUNT(Job_id,user_id) FROM data_userfavoritejobs WHERE Job_id= '" & jobid & "' and user_id= '" & Session("userid") & "'"
        ''Dim sql As String = "select Job_id,user_id from data_userfavoritejobs where Job_id = '" & jobid & "' and user_id = '" & Session("userid") & "'"
        'Dim com As New SqlCommand
        'With com
        '    .Connection = Conn
        '    .CommandText = sql
        '    .CommandType = CommandType.Text
        'End With

        'intCount = com.ExecuteScalar()
        'If intCount >= 1 Then
        '    Dim script3 As String = "alert('มีในรายการโปรดแล้ว!');"
        '    ScriptManager.RegisterStartupScript(Me, Me.GetType(), "jsCall", script3, True)
        '    Exit Sub
        'Else
        'Dim sqlb As String
        'sqlb = "INSERT INTO data_userfavoritejobs(userfavoritejobs_id,user_id,Job_id)"
        'sqlb &= "VALUES('" & userfavid & "','" & Session("userid") & "','" & jobid & "')"
        'Dim script3 As String = "alert('เพิ่มในรายการโปรดแล้ว!');"
        'Dim cmd1 = New SqlCommand
        'With cmd1
        '    .Connection = Conn
        '    .CommandType = CommandType.Text
        '    .CommandText = sqlb
        'End With
        'cmd1.ExecuteNonQuery()
        'Conn.Close()
        ''End If

        Dim strCon As String = ConfigurationManager.ConnectionStrings("TDBConnectionString").ConnectionString
        Dim con As New SqlConnection(strCon)
        Dim Cmd As New SqlCommand
        Dim rd As SqlDataReader
        Dim myCmd As New SqlCommand
        Dim da As SqlDataAdapter
        Dim ds As New DataSet


        Cmd.Connection = con
        con.Open()

        'Cmd.CommandText = "select Job_id,user_id from data_userfavoritejobs where Job_id = '" & jobid & "' and user_id = '" & Session("userid") & "'"
        Cmd.CommandText = "select * from data_userfavoritejobs where Job_id = '" & Label8.Text & "' and user_id = '" & Session("userid") & "'"
        rd = Cmd.ExecuteReader

        If rd.HasRows Then
            MsgBox("มีในรายการโปรดแล้ว")
            Response.Redirect("StudentFavoriteJobs.aspx")
        Else
            Dim intCount As Integer
            Dim Conn As New SqlConnection(strCon)
            Conn.Open()
            Dim sqlb As String
            sqlb = "INSERT INTO data_userfavoritejobs(userfavoritejobs_id,user_id,Job_id)"
            sqlb &= "VALUES('" & userfavid & "','" & Session("userid") & "','" & Session("Jobid") & "')"
            'Dim script3 As String = "alert('เพิ่มในรายการโปรดแล้ว!');"
            Dim cmd1 = New SqlCommand
            With cmd1
                .Connection = Conn
                .CommandType = CommandType.Text
                .CommandText = sqlb
            End With
            cmd1.ExecuteNonQuery()
            Conn.Close()
            MsgBox("เพิ่มในรายการโปรดแล้ว")
            Response.Redirect("StudentSearchJobs2.aspx")
        End If



    End Sub
End Class