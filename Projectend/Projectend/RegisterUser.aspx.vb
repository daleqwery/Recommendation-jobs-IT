Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Public Class RegisterUser
    Inherits System.Web.UI.Page
    Dim strCon As String = ConfigurationManager.ConnectionStrings("TDBConnectionString").ConnectionString
    Dim us As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("userid") = autokeyidmem()
        Label1.Text = Session("userid")
    End Sub
    Public Function autokeyidmem() As String
        Dim objConn As New SqlConnection(strCon)
        Dim objcmd As New SqlCommand()
        Dim iMAX As Integer = 1
        Dim intNum As String = "U"
        Dim cmd As New SqlCommand
        With cmd
            .Connection = objConn
            .CommandText = "SELECT MAX(RIGHT(user_id,3)) As user_id FROM [data_user]"
            objConn.ConnectionString = strCon
            objConn.Open()
            If IsDBNull(.ExecuteScalar()) = True Then
                intNum = "U" & "00" & iMAX

            Else
                iMAX = .ExecuteScalar() + 1
            End If

            If iMAX <= 9 Then
                intNum = "U" & "00" & iMAX
            ElseIf iMAX <= 99 Then
                intNum = "U" & "0" & iMAX

            ElseIf iMAX <= 999 Then
                intNum = "U" & iMAX
            End If
        End With
        objConn.Close()
        Return intNum
    End Function
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        If TextBox2.Text = TextBox3.Text Then

            Dim intCount As Integer
            Dim Conn As New SqlConnection(strCon)
            Conn.Open()
            us = TextBox1.Text
            Dim sql As String = "SELECT COUNT(Username) FROM data_user WHERE username= '" & us & "'"
            Dim com As New SqlCommand
            With com
                .Connection = Conn
                .CommandText = sql
                .CommandType = CommandType.Text
            End With

            intCount = com.ExecuteScalar()
            If intCount > 0 Then
                Dim script3 As String = "alert('ชื่อผู้ใช้นี้มีอยู่แล้ว!');"
                ScriptManager.RegisterStartupScript(Me, Me.GetType(), "jsCall", script3, True)
                Exit Sub
            ElseIf DropDownList2.SelectedValue = "UT001" Then
                Dim sqlb As String
                sqlb = "INSERT INTO data_user(user_id,username,password,firstname,lastname,gender,phone,email,address,province,usertype_id)"
                sqlb &= "VALUES('" & Label1.Text & "','" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & DropDownList1.SelectedValue & "','" & TextBox6.Text & "','" & TextBox7.Text & "','" & TextBox8.Text & "','" & DropDownList3.SelectedValue & "','" & DropDownList2.SelectedValue & "')"

                Dim cmd1 = New SqlCommand
                With cmd1
                    .Connection = Conn
                    .CommandType = CommandType.Text
                    .CommandText = sqlb
                End With
                cmd1.ExecuteNonQuery()
                Conn.Close()

                Response.Redirect("StudentGrade.aspx")
                Exit Sub
            ElseIf DropDownList2.SelectedValue = "UT002" Then
                Dim sqlb As String
                sqlb = "INSERT INTO data_user(user_id,username,password,firstname,lastname,gender,phone,email,address,province,usertype_id)"
                sqlb &= "VALUES('" & Label1.Text & "','" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & DropDownList1.SelectedValue & "','" & TextBox6.Text & "','" & TextBox7.Text & "','" & TextBox8.Text & "','" & DropDownList3.SelectedValue & "','" & DropDownList2.SelectedValue & "')"

                Dim cmd1 = New SqlCommand
                With cmd1
                    .Connection = Conn
                    .CommandType = CommandType.Text
                    .CommandText = sqlb
                End With
                cmd1.ExecuteNonQuery()
                Conn.Close()
                Response.Redirect("CompanyMenu.aspx")
                Exit Sub
            End If

        Else
            Label2.Text = "รหัสผ่านไม่ตรงกัน"
        End If









        'Dim intCount As Integer
        'Dim Conn As New SqlConnection(strCon)
        'Conn.Open()
        'us = TextBox1.Text
        'Dim sql As String = "SELECT COUNT(Username) FROM data_user WHERE username= '" & us & "'"
        'Dim com As New SqlCommand
        'With com
        '    .Connection = Conn
        '    .CommandText = sql
        '    .CommandType = CommandType.Text
        'End With

        'intCount = com.ExecuteScalar()
        'If intCount > 0 Then
        '    Dim script3 As String = "alert('ชื่อผู้ใช้นี้มีอยู่แล้ว!');"
        '    ScriptManager.RegisterStartupScript(Me, Me.GetType(), "jsCall", script3, True)
        '    Exit Sub
        'ElseIf DropDownList2.SelectedValue = "UT001" Then
        '    Dim sqlb As String
        '    sqlb = "INSERT INTO data_user(user_id,username,password,firstname,lastname,gender,phone,email,address,province,usertype_id)"
        '    sqlb &= "VALUES('" & Label1.Text & "','" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & DropDownList1.SelectedValue & "','" & TextBox6.Text & "','" & TextBox7.Text & "','" & TextBox8.Text & "','" & DropDownList3.SelectedValue & "','" & DropDownList2.SelectedValue & "')"

        '    Dim cmd1 = New SqlCommand
        '    With cmd1
        '        .Connection = Conn
        '        .CommandType = CommandType.Text
        '        .CommandText = sqlb
        '    End With
        '    cmd1.ExecuteNonQuery()
        '    Conn.Close()

        '    Response.Redirect("StudentGrade.aspx")
        '    Exit Sub
        'ElseIf DropDownList2.SelectedValue = "UT002" Then
        '    Dim sqlb As String
        '    sqlb = "INSERT INTO data_user(user_id,username,password,firstname,lastname,gender,phone,email,address,province,usertype_id)"
        '    sqlb &= "VALUES('" & Label1.Text & "','" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & DropDownList1.SelectedValue & "','" & TextBox6.Text & "','" & TextBox7.Text & "','" & TextBox8.Text & "','" & DropDownList3.SelectedValue & "','" & DropDownList2.SelectedValue & "')"

        '    Dim cmd1 = New SqlCommand
        '    With cmd1
        '        .Connection = Conn
        '        .CommandType = CommandType.Text
        '        .CommandText = sqlb
        '    End With
        '    cmd1.ExecuteNonQuery()
        '    Conn.Close()
        '    Response.Redirect("Login.aspx")
        '    Exit Sub
        'End If


    End Sub
End Class