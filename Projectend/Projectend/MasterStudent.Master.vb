Public Class MasterStudent
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

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