Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Imports System.Drawing
Public Class StudentFavoriteJobs
    Inherits System.Web.UI.Page
    Dim sql2 As String
    Dim strCon As String = ConfigurationManager.ConnectionStrings("TDBConnectionString").ConnectionString
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = False Then
            loadgrid()
        End If
    End Sub

    Protected Sub loadgrid()
        Dim objConn As New SqlConnection(strCon)
        Dim strSQL As String
        Dim ds As New DataSet()
        objConn.Open()
        'strSQL = "SELECT * from [data_postjobs] where NameJob LIKE '%" & TextBox12.Text & "%'  ORDER BY NameJob DESC"
        strSQL = "SELECT * from data_postjobs as a INNER JOIN data_userfavoritejobs as b on a.Job_id = b.Job_id where b.user_id = '" & Session("userid") & "'"
        Dim objCmd As New SqlCommand(strSQL, objConn)
        Dim objDa As New SqlDataAdapter(objCmd)
        objDa.Fill(ds)
        Dim count As Integer = ds.Tables(0).Rows.Count
        objConn.Close()

        If ds.Tables(0).Rows.Count > 0 Then
            GridView1.DataSource = ds
            GridView1.DataBind()
        Else
            BuildNoRecord(ds, GridView1)
        End If
        objConn = Nothing

    End Sub
    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        GridView1.PageIndex = e.NewPageIndex
        GridView1.DataBind()
        loadgrid()
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Dim Conn As New SqlConnection(strCon)
        Conn.Open()

        sql2 = "SELECT * from [data_postjobs] where NameJob LIKE '%" & TextBox12.Text & "%' or Position LIKE '%" & TextBox12.Text & "%'  ORDER BY NameJob DESC"



        Dim cm2 As New SqlCommand(sql2, Conn)
        Dim dr2 As SqlDataReader
        Dim dt2 As New DataTable
        dr2 = cm2.ExecuteReader
        dt2.Load(dr2)
        GridView1.DataSource = dt2
        GridView1.DataBind()
        Conn.Close()
    End Sub
    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Session("Jobid") = GridView1.SelectedRow.Cells(0).Text
        Session("NameJob") = GridView1.SelectedRow.Cells(1).Text
        Session("Email") = GridView1.SelectedRow.Cells(2).Text
        Session("Phone") = GridView1.SelectedRow.Cells(3).Text
        Session("Position") = GridView1.SelectedRow.Cells(4).Text
        Session("Salary") = GridView1.SelectedRow.Cells(5).Text
        Session("Property") = GridView1.SelectedRow.Cells(6).Text
        Session("Address") = GridView1.SelectedRow.Cells(7).Text

        Response.Redirect("StudentDisplayJobs.aspx")



    End Sub
    Protected Sub BuildNoRecord(ByVal ds As DataSet, ByVal GridView1 As GridView)
        Try
            If ds.Tables(0).Rows.Count = 0 Then
                ds.Tables(0).Rows.Add(ds.Tables(0).NewRow())
                GridView1.DataSource = ds
                GridView1.DataBind()
                Dim columnCount As Integer = GridView1.Rows(0).Cells.Count
                GridView1.Rows(0).Cells.Clear()
                GridView1.Rows(0).Cells.Add(New TableCell)
                GridView1.Rows(0).Cells(0).ColumnSpan = columnCount
                GridView1.Rows(0).Cells(0).Text = "ไม่พบข้อมูล"
                GridView1.Rows(0).Cells(0).ForeColor = Color.Black
                GridView1.Rows(0).Cells(0).Font.Bold = True
            End If
        Catch ex As Exception

        End Try
    End Sub
End Class