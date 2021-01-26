
Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Public Class AdminMenu
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



            'Session("firstname") = Nothing
            'Session("lastname") = Nothing
            'Session("phone") = Nothing
            'Session("email") = Nothing
            'Session("address") = Nothing
            'Session("province") = Nothing


        End If
    End Sub
    Protected Sub ImageButton1_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton1.Click
        Response.Redirect("AdminSearchPostJobs.aspx")
    End Sub
    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("AdminSearchStudent.aspx")
    End Sub
    Protected Sub ImageButton3_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton3.Click
        Response.Redirect("AdminSearchCompany.aspx")
    End Sub

End Class