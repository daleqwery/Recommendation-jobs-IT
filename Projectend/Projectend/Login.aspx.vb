
Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Public Class Login
    Inherits System.Web.UI.Page
    Dim usertype As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim strCon As String = ConfigurationManager.ConnectionStrings("TDBConnectionString").ConnectionString
        Dim con As New SqlConnection(strCon)
        Dim Cmd As New SqlCommand
        Dim rd As SqlDataReader
        Dim myCmd As New SqlCommand
        Dim da As SqlDataAdapter
        Dim ds As New DataSet


        'con.ConnectionString = "Data Source=DESKTOP-MGEOB2P\SQLEXPRESS;Initial Catalog=ProjectEnd;Integrated Security=True"


        Cmd.Connection = con
        con.Open()

        Cmd.CommandText = "select username,password from data_user where username = '" & TextBox1.Text & "' and password = '" & TextBox2.Text & "'"
        rd = Cmd.ExecuteReader




        If rd.HasRows Then
            da = New SqlDataAdapter("SELECT * FROM data_user WHERE username= '" & TextBox1.Text & "' ", strCon)

            ds.Clear()
            da.Fill(ds, "data_user")
            With ds.Tables("data_user").Rows(0)
                'usertype = .Item("usertype_id")
                Session("usertype") = .Item("usertype_id")
                Session("userid") = .Item("user_id")
                Session("userprovince") = .Item("province")

            End With

            If Session("usertype") = "UT001" Then
                Session("username") = TextBox1.Text
                Session("UserAuthentication") = TextBox2.Text
                Response.Redirect("StudentMenu.aspx")

            ElseIf Session("usertype") = "UT002" Then
                Session("username") = TextBox1.Text
                Session("UserAuthentication") = TextBox2.Text
                Response.Redirect("CompanyMenu.aspx")
            ElseIf Session("usertype") = "UT003" Then
                Response.Redirect("AdminMenu.aspx")
            End If



        Else
            MsgBox("Username หรือ Password ไม่ถูกต้อง")
        End If








        'If RadioButtonList3.SelectedIndex = 0 Then
        '    Cmd.CommandText = "select username,password from data_useradmin where username = '" & TextBox1.Text & "' and password = '" & TextBox2.Text & "'"
        '    rd = Cmd.ExecuteReader
        '    If rd.HasRows Then
        '        'MsgBox("ยินดีต้อนรับเข้าสู่ระบบคุณ admin")
        '        Session("NAME") = TextBox1.Text
        '        Session("UserAuthentication") = TextBox2.Text
        '        Response.Redirect("AdminMenu.aspx")
        '    Else
        '        MsgBox("Username ผิด หรือ Password admin")
        '    End If

        'ElseIf RadioButtonList3.SelectedIndex = 1 Then

        '    Cmd.CommandText = "select username,password from data_usercompany where username ='" & TextBox1.Text & "' and password ='" & TextBox2.Text & "'"
        '    rd = Cmd.ExecuteReader
        '    If rd.HasRows Then
        '        Session("NAME") = TextBox1.Text
        '        Session("UserAuthentication") = TextBox2.Text
        '        'MsgBox("ยินดีต้อนรับเข้าสู่ระบบบริษัท")
        '        Response.Redirect("CompanyMenu.aspx")
        '    Else
        '        MsgBox("Username ผิด หรือ Password company")
        '    End If

        'ElseIf RadioButtonList3.SelectedIndex = 2 Then

        '    Cmd.CommandText = "select username,password from data_userstudent where username ='" & TextBox1.Text & "' and password ='" & TextBox2.Text & "'"
        '    rd = Cmd.ExecuteReader
        '    If rd.HasRows Then
        '        da = New SqlDataAdapter("SELECT * FROM data_userstudent WHERE username= '" & TextBox1.Text & "' and password ='" & TextBox2.Text & "'", strCon)

        '        ds.Clear()
        '        da.Fill(ds, "data_userstudent")

        '        With ds.Tables("data_userstudent").Rows(0)
        '            Session("userid") = .Item("userstudent_id")
        '            Session("userprovice") = .Item("userstudent_id")
        '        End With

        '        'MsgBox("ยินดีต้อนรับเข้าสู่ระบบผู้ใช้งาน")
        '        Session("NAME") = TextBox1.Text
        '        Session("UserAuthentication") = TextBox2.Text
        '        Response.Redirect("StudentMenu.aspx")
        '    Else
        '        MsgBox("Username ผิด หรือ Password user")
        '    End If

        'End If
        'Response.Redirect("Login.aspx")

    End Sub







    Protected Sub LinkButton6_Click(sender As Object, e As EventArgs) Handles LinkButton6.Click
        Response.Redirect("RegisterUser.aspx")
    End Sub



    Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged

    End Sub

    Protected Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles TextBox2.TextChanged

    End Sub
End Class