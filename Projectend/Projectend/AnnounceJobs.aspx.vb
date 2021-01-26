Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Imports System.Drawing
Public Class AnnounceJobs
    Inherits System.Web.UI.Page
    Dim strCon As String = ConfigurationManager.ConnectionStrings("TDBConnectionString").ConnectionString
    Dim us As String
    Dim etc As String
    Dim auto1 As String
    Dim auto2 As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        auto1 = autokeyidmem()
        auto2 = autokeyidmem2()
        etc = DropDownList1.SelectedValue
        Session("Latitude") = "13.7244416"
        Session("Longitude") = "100.3529036"

        If etc = "Another" Then
            DropDownList2.Enabled = True
            SubPosition.Enabled = True
            Label1.Text = "ประเภทสายงาน"
            Label2.Text = "โปรดระบุ"
        Else
            DropDownList2.Enabled = False
            SubPosition.Enabled = False
            Label1.Text = ""
            Label2.Text = ""
        End If
    End Sub
    Public Function autokeyidmem() As String
        Dim objConn As New SqlConnection(strCon)
        Dim objcmd As New SqlCommand()
        Dim iMAX As Integer = 1
        Dim intNum As String = "K"
        Dim cmd As New SqlCommand
        With cmd
            .Connection = objConn
            .CommandText = "SELECT MAX(RIGHT(Job_id,3)) As Job_id FROM [data_postjobs]"
            objConn.ConnectionString = strCon
            objConn.Open()
            If IsDBNull(.ExecuteScalar()) = True Then
                intNum = "K" & "00" & iMAX

            Else
                iMAX = .ExecuteScalar() + 1
            End If

            If iMAX <= 9 Then
                intNum = "K" & "00" & iMAX
            ElseIf iMAX <= 99 Then
                intNum = "K" & "0" & iMAX

            ElseIf iMAX <= 999 Then
                intNum = "K" & iMAX
            End If
        End With
        objConn.Close()
        Return intNum
    End Function

    Public Function autokeyidmem2() As String
        Dim objConn As New SqlConnection(strCon)
        Dim objcmd As New SqlCommand()
        Dim iMAX As Integer = 1
        Dim intNum As String = "SP"
        Dim cmd As New SqlCommand
        With cmd
            .Connection = objConn
            .CommandText = "SELECT MAX(RIGHT(SubPosition_id,3)) As SubPosition_id FROM [data_subposition]"
            objConn.ConnectionString = strCon
            objConn.Open()
            If IsDBNull(.ExecuteScalar()) = True Then
                intNum = "SP" & "00" & iMAX

            Else
                iMAX = .ExecuteScalar() + 1
            End If

            If iMAX <= 9 Then
                intNum = "SP" & "00" & iMAX
            ElseIf iMAX <= 99 Then
                intNum = "SP" & "0" & iMAX

            ElseIf iMAX <= 999 Then
                intNum = "SP" & iMAX
            End If
        End With
        objConn.Close()
        Return intNum
    End Function

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim address1 As String = ""
        Dim address2 As String = ""
        Dim address3 As String = ""
        address1 = Request.Form("d1")
        address2 = Request.Form("d2")
        address3 = Request.Form("d3")

        Dim intCount As Integer
        Dim Conn As New SqlConnection(strCon)
        Conn.Open()




        If NameJob.Text = "" Then
            Dim script3 As String = "alert('กรุณากรอกข้อมูลให้ครบ!');"
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "jsCall", script3, True)
            NameJob.Visible = True
            Exit Sub
        ElseIf Email.Text = "" Then
            Dim script3 As String = "alert('กรุณากรอกข้อมูลให้ครบ!');"
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "jsCall", script3, True)
            Email.Visible = True
            Exit Sub
        ElseIf Phone.Text = "" Then
            Dim script3 As String = "alert('กรุณากรอกข้อมูลให้ครบ!');"
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "jsCall", script3, True)
            Phone.Visible = True
            Exit Sub
            'ElseIf SubPosition.Text = "" Then
            '    Dim script3 As String = "alert('กรุณากรอกข้อมูลให้ครบ!');"
            '    ScriptManager.RegisterStartupScript(Me, Me.GetType(), "jsCall", script3, True)
            '    SubPosition.Visible = True
            '    Exit Sub
        ElseIf Propertyjob.Text = "" Then
            Dim script3 As String = "alert('กรุณากรอกข้อมูลให้ครบ!');"
            ScriptManager.RegisterStartupScript(Me, Me.GetType(), "jsCall", script3, True)
            Propertyjob.Visible = True
            Exit Sub

        Else


            'Dim sqlb As String = "INSERT INTO [PostJob]([NameJobs],[Email],[Phone],[Position],[Salary],[Property],[Address],[Latitude],[Longitude]) VALUES (  '" + TextBox1.Text + "', '" + TextBox2.Text + "','" + TextBox3.Text + "'," + DropDownList1.SelectedValue + ",'" + TextBox4.Text + "','" + TextBox5.Text + "','" + address1 + "','" + address2 + "','" + address3 + "')"

            Dim regDate As Date = Date.Now()
            Dim strDate As String = regDate.ToString("yyyy-MM-dd")

            Dim sqlb As String
            Dim sqlc As String

            If etc = "Another" Then
                sqlb = "INSERT INTO data_postjobs(Job_id,NameJob,Email,Phone,Position,Salary,Property,Address,Latitude,Longitude,Releasedate,SubPosition_id,Status,user_id)"
                sqlb &= "VALUES('" & auto1 & "','" & NameJob.Text & "','" & Email.Text & "','" & Phone.Text & "','" & SubPosition.Text & "','" & DropDownList3.SelectedValue & "','" & Propertyjob.Text & "','" & address1 & "','" & address2 & "','" & address3 & "','" & strDate & "','" & auto2 & "','" & "open" & "','" & Session("userid") & "')"

                sqlc = "INSERT INTO data_subposition(SubPosition_id,SubPositionName,Position_id)"
                sqlc &= "VALUES('" & auto2 & "','" & SubPosition.Text & "','" & DropDownList2.SelectedValue & "')"
                Dim cmd2 = New SqlCommand
                With cmd2
                    .Connection = Conn
                    .CommandType = CommandType.Text
                    .CommandText = sqlc
                End With
                cmd2.ExecuteNonQuery()
            Else
                sqlb = "INSERT INTO data_postjobs(Job_id,NameJob,Email,Phone,Position,Salary,Property,Address,Latitude,Longitude,Releasedate,SubPosition_id,Status,user_id)"
                sqlb &= "VALUES('" & auto1 & "','" & NameJob.Text & "','" & Email.Text & "','" & Phone.Text & "','" & DropDownList1.SelectedItem.Text & "','" & DropDownList3.SelectedValue & "','" & Propertyjob.Text & "','" & address1 & "','" & address2 & "','" & address3 & "','" & strDate & "','" & DropDownList1.SelectedValue & "','" & "open" & "','" & Session("userid") & "')"
            End If


            'sqlb = "INSERT INTO data_postjobs(Job_id,NameJob,Email,Phone,Position,Salary,Property,Address,Latitude,Longitude,Releasedate)"
            'sqlb &= "VALUES('" & Label13.Text & "','" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & DropDownList1.SelectedItem.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & address1 & "','" & address2 & "','" & address3 & "','" & strDate & "')"



            Dim cmd1 = New SqlCommand
            With cmd1
                .Connection = Conn
                .CommandType = CommandType.Text
                .CommandText = sqlb
            End With

            cmd1.ExecuteNonQuery()

            Conn.Close()

            MsgBox("เพิ่มข็อมูลรับหางาน")
            Response.Redirect("CompanyMenu.aspx")
        End If
    End Sub
    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        If TextBoxla.Text <> "" And TextBoxlo.Text <> "" Then
            Session("Latitude") = TextBoxla.Text
            Session("Longitude") = TextBoxlo.Text

        End If
    End Sub
End Class