Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Public Class CompanyMenu
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
                Session("userid") = .Item("user_id")
                Session("firstname") = .Item("firstname")
                Session("lastname") = .Item("lastname")
                Session("phone") = .Item("phone")
                Session("email") = .Item("email")
                Session("address") = .Item("address")
                Session("province") = .Item("province")

            End With


            firstname.Text = Session("firstname")
            lastname.Text = Session("lastname")
            phone.Text = Session("phone")
            email.Text = Session("email")
            address.Text = Session("address")
            province.Text = Session("province")



            Session("firstname") = Nothing
            Session("lastname") = Nothing
            Session("phone") = Nothing
            Session("email") = Nothing
            Session("address") = Nothing
            Session("province") = Nothing


        End If
    End Sub

    'Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
    '    Response.Redirect("CompanyViewJobs.aspx")
    'End Sub

    'Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
    '    Response.Redirect("AnnounceJobs.aspx")
    'End Sub

    'Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
    '    Response.Redirect("UserEdit.aspx")
    'End Sub




    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("CompanyViewJobs.aspx")
    End Sub
    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("AnnounceJobs.aspx")
    End Sub
End Class