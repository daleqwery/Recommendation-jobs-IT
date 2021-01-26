Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Public Class StudentMenu
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


        Dim intCount As Integer
        Dim Conn As New SqlConnection(strCon)
        Conn.Open()

        Dim sql As String = "SELECT COUNT(user_id) FROM data_grade WHERE user_id= '" & Session("userid") & "'"
        Dim com As New SqlCommand
        With com
            .Connection = Conn
            .CommandText = sql
            .CommandType = CommandType.Text
        End With

        intCount = com.ExecuteScalar()
        If intCount > 0 Then
            Response.Redirect("Studentpremodel.aspx")
            Exit Sub
        Else
            Response.Redirect("StudentGrade.aspx")
        End If



        'Response.Redirect("Studentpremodel.aspx")
    End Sub
    Protected Sub ImageButton2_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton2.Click
        Response.Redirect("StudentSearchJobs2.aspx")
    End Sub
    Protected Sub ImageButton3_Click(sender As Object, e As ImageClickEventArgs) Handles ImageButton3.Click
        Response.Redirect("StudentFavoriteJobs.aspx")
    End Sub
End Class