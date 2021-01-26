Public Class Studentpremodel
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("studentiden1") = DropDownList1.SelectedValue
        Session("studentiden2") = DropDownList2.SelectedValue
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("model1.aspx")
    End Sub
End Class