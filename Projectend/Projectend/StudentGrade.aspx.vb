Imports System.Data.SqlClient
Imports System.Data
Imports System.Web.Configuration
Imports System.Drawing
Public Class StudentGrade
    Inherits System.Web.UI.Page
    Dim strCon As String = ConfigurationManager.ConnectionStrings("TDBConnectionString").ConnectionString

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("gradeid") = autokeyidmem()

        If major.SelectedValue = "it" Then
            assem.Enabled = False
            alogr.Enabled = False
            automa.Enabled = False
            nlp.Enabled = False

        Else
            assem.Enabled = True
            alogr.Enabled = True
            automa.Enabled = True
            nlp.Enabled = True

        End If
    End Sub
    Public Function autokeyidmem() As String
        Dim objConn As New SqlConnection(strCon)
        Dim objcmd As New SqlCommand()
        Dim iMAX As Integer = 1
        Dim intNum As String = "G"
        Dim cmd As New SqlCommand
        With cmd
            .Connection = objConn
            .CommandText = "SELECT MAX(RIGHT(grade_id,3)) As grade_id FROM [data_grade]"
            objConn.ConnectionString = strCon
            objConn.Open()
            If IsDBNull(.ExecuteScalar()) = True Then
                intNum = "G" & "00" & iMAX

            Else
                iMAX = .ExecuteScalar() + 1
            End If

            If iMAX <= 9 Then
                intNum = "G" & "00" & iMAX
            ElseIf iMAX <= 99 Then
                intNum = "G" & "0" & iMAX

            ElseIf iMAX <= 999 Then
                intNum = "G" & iMAX
            End If
        End With
        objConn.Close()
        Return intNum
    End Function
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim Conn As New SqlConnection(strCon)
        Conn.Open()
        Dim sqlb As String
        'sqlb = "INSERT INTO data_grade(grade_id,major,grade,intro,compro,logic,funda,softcon,datastuc,ppl,databasedb,algor,asmby,automa,os,sa,protocal,combus,mobileapp,image,ai,nlp,iot,webapp,hci,math,eng,user_id)"
        'sqlb &= "VALUES('" & Session("gradeid") & "','" & major.SelectedValue & "','" & grade.SelectedValue & "','" & intro.SelectedValue & "','" & compro.SelectedValue & "','" & logic.SelectedValue & "','" & funda.SelectedValue & "','" & softcontruc.SelectedValue & "','" & datastuc.SelectedValue & "','" & ppl.SelectedValue & "','" & dbase.SelectedValue & "','" & "0" & "','" & "0" & "','" & "0" & "','" & os.SelectedValue & "','" & sa.SelectedValue & "','" & proto.SelectedValue & "','" & combus.SelectedValue & "','" & mobile.SelectedValue & "','" & imag.SelectedValue & "','" & ai.SelectedValue & "','" & "0" & "','" & iot.SelectedValue & "','" & web.SelectedValue & "','" & hci.SelectedValue & "','" & math.SelectedValue & "','" & eng.SelectedValue & "','" & Session("userid") & "')"

        If major.SelectedValue = "it" Then
            sqlb = "INSERT INTO data_grade(grade_id,major,grade,intro,compro,logic,funda,softcon,datastuc,ppl,databasedb,algor,asmby,automa,os,sa,protocal,combus,mobileapp,image,ai,nlp,iot,webapp,hci,math,eng,user_id)"
            sqlb &= "VALUES('" & Session("gradeid") & "','" & major.SelectedValue & "','" & grade.SelectedValue & "','" & intro.SelectedValue & "','" & compro.SelectedValue & "','" & logic.SelectedValue & "','" & funda.SelectedValue & "','" & softcontruc.SelectedValue & "','" & datastuc.SelectedValue & "','" & ppl.SelectedValue & "','" & dbase.SelectedValue & "','" & "0" & "','" & "0" & "','" & "0" & "','" & os.SelectedValue & "','" & sa.SelectedValue & "','" & proto.SelectedValue & "','" & combus.SelectedValue & "','" & mobile.SelectedValue & "','" & imag.SelectedValue & "','" & ai.SelectedValue & "','" & "0" & "','" & iot.SelectedValue & "','" & web.SelectedValue & "','" & hci.SelectedValue & "','" & math.SelectedValue & "','" & eng.SelectedValue & "','" & Session("userid") & "')"


        Else
            sqlb = "INSERT INTO data_grade(grade_id,major,grade,intro,compro,logic,funda,softcon,datastuc,ppl,databasedb,algor,asmby,automa,os,sa,protocal,combus,mobileapp,image,ai,nlp,iot,webapp,hci,math,eng,user_id)"
            sqlb &= "VALUES('" & Session("gradeid") & "','" & major.SelectedValue & "','" & grade.SelectedValue & "','" & intro.SelectedValue & "','" & compro.SelectedValue & "','" & logic.SelectedValue & "','" & funda.SelectedValue & "','" & softcontruc.SelectedValue & "','" & datastuc.SelectedValue & "','" & ppl.SelectedValue & "','" & dbase.SelectedValue & "','" & alogr.SelectedValue & "','" & assem.SelectedValue & "','" & automa.SelectedValue & "','" & os.SelectedValue & "','" & sa.SelectedValue & "','" & proto.SelectedValue & "','" & combus.SelectedValue & "','" & mobile.SelectedValue & "','" & imag.SelectedValue & "','" & ai.SelectedValue & "','" & nlp.SelectedValue & "','" & iot.SelectedValue & "','" & web.SelectedValue & "','" & hci.SelectedValue & "','" & math.SelectedValue & "','" & eng.SelectedValue & "','" & Session("userid") & "')"

        End If






        Dim cmd1 = New SqlCommand
        With cmd1
            .Connection = Conn
            .CommandType = CommandType.Text
            .CommandText = sqlb
        End With
        cmd1.ExecuteNonQuery()
        Conn.Close()

        'MsgBox("เพิ่มช้อมูลเรียบร้อย")
        Response.Redirect("StudentMenu.aspx")


    End Sub


End Class