Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Imports System.Drawing

Public Class AdminEditPostJobs
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim objCmd As SqlCommand
    Dim strCon As String = ConfigurationManager.ConnectionStrings("TDBConnectionString").ConnectionString
    Dim us As String
    Dim labh As String
    Dim lobh As String
    Dim updatestatus As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then

            da = New SqlDataAdapter("SELECT * FROM data_postjobs WHERE Job_id= '" & Session("Jobid") & "' ", strCon)

            ds.Clear()
            da.Fill(ds, "data_postjobs")

            With ds.Tables("data_postjobs").Rows(0)
                Session("NameJob") = .Item("NameJob")
                Session("Email") = .Item("Email")
                Session("Phone") = .Item("Phone")
                Session("Position") = .Item("Position")
                Session("Salary") = .Item("Salary")
                Session("Property") = .Item("Property")
                Session("Address") = .Item("Address")
                Session("Latitude") = .Item("Latitude")
                Session("Longitude") = .Item("Longitude")
                Session("Releasedate") = .Item("Releasedate")
                Session("Status") = .Item("Status")

            End With

            'labh = Session("Latitude")
            'lobh = Session("Longitude")


            'Me.la = Request.Form("la")
            'Me.lo = Request.Form("lo")

            NameJob.Text = Session("NameJob")
            Email.Text = Session("Email")
            Phone.Text = Session("Phone")
            Position.Text = Session("Position")
            DropDownList3.SelectedValue = Session("Salary")
            Propertyjob.Text = Session("Property")
            postdate.Text = Session("Releasedate")

            If Session("Status") = "open" Then
                status.Text = "เปิดรับ"
            ElseIf Session("Status") = "close" Then
                status.Text = "ปิดรับ"
            End If


            'Session("Latitude") = TextBoxla.Text
            'Session("Longitude") = TextBoxlo.Text

            'Session("NameJob") = Nothing
            'Session("Email") = Nothing
            'Session("Phone") = Nothing
            'Session("lastname") = Nothing
            'Session("phone") = Nothing
            'Session("email") = Nothing
            'Session("address") = Nothing
            'Session("province") = Nothing


        End If
    End Sub



    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim address1 As String = ""
        Dim address2 As String = ""
        Dim address3 As String = ""
        address1 = Request.Form("d1")
        address2 = Request.Form("d2")
        address3 = Request.Form("d3")
        Dim Conn As New SqlConnection(strCon)
        Dim com As New SqlCommand

        '-----------------------------------------------------------------------------------------------------------------
        Conn.Open()
        ' Dim cn As String = "select ID_Company from RegisterCompany WHERE UserName = '" & Session("NAME") & "'"
        Dim sqlb As String
        'If TextBoxla.Text <> "" And TextBoxlo.Text <> "" Then
        '    sqlb = "UPDATE data_postjobs set NameJob = '" + NameJob.Text + "'" + ",Email = '" + Email.Text + "'" + ",Phone = '" + Phone.Text + "'" + ",Salary = '" + DropDownList3.SelectedValue + "'" + ",Property = '" + Propertyjob.Text + "'" + ",Address = '" + address1 + "'" + ",Latitude = '" + address2 + "'" + ",Longitude = '" + address3 + "'" + "WHERE Job_id = '" + Session("Jobid") + "'"
        'Else
        '    sqlb = "UPDATE data_postjobs set NameJob = '" + NameJob.Text + "'" + ",Email = '" + Email.Text + "'" + ",Phone = '" + Phone.Text + "'" + ",Salary = '" + DropDownList3.SelectedValue + "'" + ",Property = '" + Propertyjob.Text + "'" + ",Address = '" + address1 + "'" + ",Latitude = '" + address2 + "'" + ",Longitude = '" + address3 + "'" + "WHERE Job_id = '" + Session("Jobid") + "'"
        'End If

        sqlb = "UPDATE data_postjobs set NameJob = '" + NameJob.Text + "'" + ",Email = '" + Email.Text + "'" + ",Phone = '" + Phone.Text + "'" + ",Salary = '" + DropDownList3.SelectedValue + "'" + ",Property = '" + Propertyjob.Text + "'" + ",Address = '" + address1 + "'" + ",Latitude = '" + address2 + "'" + ",Longitude = '" + address3 + "'" + "WHERE Job_id = '" + Session("Jobid") + "'"


        'Dim sqlb As String = "UPDATE data_postjobs set NameJob = '" + NameJob.Text + "'" + ",Email = '" + Email.Text + "'" + ",Phone = '" + Phone.Text + "'" + ",Salary = '" + DropDownList3.SelectedValue + "'" + ",Property = '" + Propertyjob.Text + "'" + ",Address = '" + address1 + "'" + ",Latitude = '" + address2 + "'" + ",Longitude = '" + address3 + "'" + "WHERE Job_id = '" + Session("Jobid") + "'"

        With com
            .Connection = Conn
            .CommandText = sqlb
            .CommandType = CommandType.Text
        End With
        Dim cmd1 = New SqlCommand
        With cmd1
            .Connection = Conn
            .CommandType = CommandType.Text
            .CommandText = sqlb
        End With
        cmd1.ExecuteNonQuery()
        Conn.Close()
        MsgBox("แก้ไขเรียบร้อย")
        Response.Redirect("AdminSearchPostJobs.aspx")
    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
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
        strSql = "DELETE FROM data_postjobs WHERE Job_id ='" & Session("Jobid") & "'"
        objCmd = New SqlCommand(strSql, objConn)
        With objCmd
            .Connection = objConn
            .CommandText = strSql
            .CommandType = CommandType.Text
            .ExecuteNonQuery()

        End With

        objConn.Close()
        objConn = Nothing

        MsgBox("ลบ")
        Response.Redirect("AdminSearchPostJobs.aspx")
    End Sub
    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        If TextBoxla.Text <> "" And TextBoxlo.Text <> "" Then
            Session("Latitude") = TextBoxla.Text
            Session("Longitude") = TextBoxlo.Text

        End If
    End Sub
End Class