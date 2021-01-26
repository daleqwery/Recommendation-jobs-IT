Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Public Class UserEdit
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim strCon As String = ConfigurationManager.ConnectionStrings("TDBConnectionString").ConnectionString

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then

            da = New SqlDataAdapter("SELECT * FROM data_user WHERE user_id= '" & Session("userid") & "' ", strCon)

            ds.Clear()
            da.Fill(ds, "data_user")

            With ds.Tables("data_user").Rows(0)
                Session("usernameedit") = .Item("username")
                Session("password") = .Item("password")
                Session("firstname") = .Item("firstname")
                Session("lastname") = .Item("lastname")
                Session("phone") = .Item("phone")
                Session("email") = .Item("email")
                Session("address") = .Item("address")
                Session("province") = .Item("province")

            End With

            username.Text = Session("usernameedit")
            password.Text = Session("password")
            firstname.Text = Session("firstname")
            lastname.Text = Session("lastname")
            phone.Text = Session("phone")
            email.Text = Session("email")
            address.Text = Session("address")
            DropDownList3.SelectedValue = Session("province")


            Session("usernameedit") = Nothing
            Session("password") = Nothing
            Session("firstname") = Nothing
            Session("lastname") = Nothing
            Session("phone") = Nothing
            Session("email") = Nothing
            Session("address") = Nothing
            Session("province") = Nothing


        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim Conn As New SqlConnection(strCon)
        Dim com As New SqlCommand

        '-----------------------------------------------------------------------------------------------------------------
        Conn.Open()
        ' Dim cn As String = "select ID_Company from RegisterCompany WHERE UserName = '" & Session("NAME") & "'"
        Dim sqlb As String = "UPDATE data_user set username = '" + username.Text + "'" + ",password = '" + password.Text + "'" + ",firstname = '" + firstname.Text + "'" + ",lastname = '" + lastname.Text + "'" + ",phone = '" + phone.Text + "'" + ",email = '" + email.Text + "'" + ",address = '" + address.Text + "'" + ",province = '" + DropDownList3.SelectedValue + "'" + "WHERE user_id = '" + Session("userid") + "'"

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
        If Session("usertype") = "UT001" Then

            Response.Redirect("StudentMenu.aspx")

        ElseIf Session("usertype") = "UT002" Then

            Response.Redirect("CompanyMenu.aspx")

        ElseIf Session("usertype") = "UT003" Then
            Response.Redirect("AdminMenu.aspx")

        End If
        'Response.Redirect("StudentMenu.aspx")
    End Sub


End Class