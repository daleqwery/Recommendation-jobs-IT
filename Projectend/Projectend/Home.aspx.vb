Public Class Home
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub เริ่มต้นการใช้งาน_Click(sender As Object, e As EventArgs) Handles เริ่มต้นการใช้งาน.Click
        Response.Redirect("Login.aspx")
    End Sub
End Class