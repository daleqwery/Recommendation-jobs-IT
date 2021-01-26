Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Public Class UserMaster
    Inherits System.Web.UI.MasterPage
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim strCon As String = ConfigurationManager.ConnectionStrings("TDBConnectionString").ConnectionString
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If IsPostBack = False Then

        '    da = New SqlDataAdapter("SELECT * FROM data_user WHERE user_id= '" & Session("userid") & "' ", strCon)

        '    ds.Clear()
        '    da.Fill(ds, "data_user")

        '    With ds.Tables("data_user").Rows(0)
        '        Session("usernameedit") = .Item("username")
        '        Session("password") = .Item("password")
        '        Session("firstname") = .Item("firstname")
        '        Session("lastname") = .Item("lastname")
        '        Session("phone") = .Item("phone")
        '        Session("email") = .Item("email")
        '        Session("address") = .Item("address")
        '        Session("province") = .Item("province")

        '    End With




        '    Session("usernameedit") = Nothing
        '    Session("password") = Nothing
        '    Session("firstname") = Nothing
        '    Session("lastname") = Nothing
        '    Session("phone") = Nothing
        '    Session("email") = Nothing
        '    Session("address") = Nothing
        '    Session("province") = Nothing


        'End If
    End Sub

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        If Session("usertype") = "UT001" Then

            Response.Redirect("StudentMenu.aspx")

        ElseIf Session("usertype") = "UT002" Then

            Response.Redirect("CompanyMenu.aspx")

        ElseIf Session("usertype") = "UT003" Then
            Response.Redirect("AdminMenu.aspx")

        End If
    End Sub
    Protected Sub LinkButton2_Click(sender As Object, e As EventArgs) Handles LinkButton2.Click
        Session("usernameedit") = Nothing
        Session("password") = Nothing
        Session("firstname") = Nothing
        Session("lastname") = Nothing
        Session("phone") = Nothing
        Session("email") = Nothing
        Session("address") = Nothing
        Session("province") = Nothing
        Session("usertype") = Nothing
        Session("userid") = Nothing
        Response.Redirect("Login.aspx")
    End Sub
End Class