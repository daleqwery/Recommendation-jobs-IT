Imports System.Web
Imports System.Web.UI
Imports weka.core
Imports weka.core.Instances
Imports System.Data
Imports System.Data.SqlClient
Imports System.Linq
Imports System.Web.Configuration
Imports weka.experiment.InstanceQuery
Imports System.IO
Imports System.Collections.Generic
Imports weka.classifiers.functions
Imports weka.core.converters.ConverterUtils.DataSource
Imports java.io.BufferedReader
Imports java.io.FileReader
Imports System.Data.OleDb
Imports System.Web.Security
Imports System.Globalization
Imports System.Text
Public Class model1
    Inherits System.Web.UI.Page
    Dim intro As String
    Dim compro As String
    Dim logic As String
    Dim funda As String
    Dim softcon As String
    Dim datastuc As String
    Dim ppl As String
    Dim database As String

    Dim algor As String
    Dim asmby As String
    Dim automa As String
    Dim os As String
    Dim sa As String
    Dim protocal As String
    Dim combus As String

    Dim mobileapp As String
    Dim image As String
    Dim ai As String
    Dim nlp As String
    Dim iot As String
    Dim webapp As String
    Dim typestudent As String
    Dim hci As String
    Dim math As String
    Dim eng As String

    Dim grade As String
    Dim strCon As String = WebConfigurationManager.ConnectionStrings("desktop-mgeob2p\sqlexpress.ProjectEnd.dbo").ConnectionString
    Dim sql2 As String



    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        typestudent = Session("typestudent")
        intro = Session("grade1")
        compro = Session("grade2")
        logic = Session("grade3")
        funda = Session("grade4")
        softcon = Session("grade5")
        datastuc = Session("grade6")
        ppl = Session("grade7")
        database = Session("grade8")
        algor = Session("grade9")
        asmby = Session("grade10")
        automa = Session("grade11")
        os = Session("grade12")
        sa = Session("grade13")
        protocal = Session("grade14")
        combus = Session("grade15")
        mobileapp = Session("grade16")
        image = Session("grade17")
        ai = Session("grade18")
        nlp = Session("grade19")
        iot = Session("grade20")
        webapp = Session("grade21")
        typestudent = Session("typestudent")
        hci = Session("grade22")
        math = Session("grade23")
        eng = Session("grade24")
        grade = Session("grade")

        If Session("typestudent") = "" Then
            Response.Write("Session time out")
            Exit Sub
        End If

        Dim Type_String As String = Session("typestudent")

        If Type_String = "cs" Then
            Model11()

        ElseIf Type_String = "it" Then
            Model11()

        End If

    End Sub


    Public Sub Model11()
        Dim insts As weka.core.Instances = New weka.core.Instances(New java.io.FileReader("D:\180320finalpro\Projectend\Projectend\Projectend\weka model\test1.arff"))
        Dim inst = New weka.core.Instance(29)

        inst.setValue(insts.attribute(0), Convert.ToString(grade))
        inst.setValue(insts.attribute(1), Convert.ToInt16(intro))
        inst.setValue(insts.attribute(2), Convert.ToInt16(compro))
        inst.setValue(insts.attribute(3), Convert.ToInt16(logic))
        inst.setValue(insts.attribute(4), Convert.ToInt16(funda))
        inst.setValue(insts.attribute(5), Convert.ToInt16(softcon))
        inst.setValue(insts.attribute(6), Convert.ToInt16(datastuc))
        inst.setValue(insts.attribute(7), Convert.ToInt16(ppl))
        inst.setValue(insts.attribute(8), Convert.ToInt16(database))
        inst.setValue(insts.attribute(9), Convert.ToInt16(algor))
        inst.setValue(insts.attribute(10), Convert.ToInt16(asmby))
        inst.setValue(insts.attribute(11), Convert.ToInt16(automa))
        inst.setValue(insts.attribute(12), Convert.ToInt16(os))
        inst.setValue(insts.attribute(13), Convert.ToInt16(sa))
        inst.setValue(insts.attribute(14), Convert.ToInt16(protocal))
        inst.setValue(insts.attribute(15), Convert.ToInt16(combus))
        inst.setValue(insts.attribute(16), Convert.ToInt16(mobileapp))
        inst.setValue(insts.attribute(17), Convert.ToInt16(image))
        inst.setValue(insts.attribute(18), Convert.ToInt16(ai))
        inst.setValue(insts.attribute(19), Convert.ToInt16(nlp))
        inst.setValue(insts.attribute(20), Convert.ToInt16(iot))
        inst.setValue(insts.attribute(21), Convert.ToInt16(webapp))
        inst.setValue(insts.attribute(22), Convert.ToInt16(hci))
        inst.setValue(insts.attribute(23), Convert.ToInt16(math))
        inst.setValue(insts.attribute(24), Convert.ToInt16(eng))

        insts.add(inst)
        insts.setClassIndex(insts.numAttributes() - 1)
        Dim model As weka.classifiers.trees.J48graft = New weka.classifiers.trees.J48graft
        model.buildClassifier(insts)

        'TextBox1.Text = Convert.ToString(model)

        Dim str As String
        str = model.classifyInstance(insts.lastInstance())
        str = str
        If str = 0 Then
            str = "dev"
            TextBox4.Text = str
            Dim Conn As New SqlConnection(strCon)
            Conn.Open()

            sql2 = "SELECT * from [PostJob] where Position LIKE '" & str & "'"
            Dim cm2 As New SqlCommand(sql2, Conn)
            Dim dr2 As SqlDataReader
            Dim dt2 As New DataTable
            dr2 = cm2.ExecuteReader
            dt2.Load(dr2)
            GridView1.DataSource = dt2
            GridView1.DataBind()
            Conn.Close()
        ElseIf str = 1 Then
            str = "Net"
            TextBox4.Text = str
            Dim Conn As New SqlConnection(strCon)
            Conn.Open()

            sql2 = "SELECT * from [PostJob] where Position LIKE '" & str & "'"
            Dim cm2 As New SqlCommand(sql2, Conn)
            Dim dr2 As SqlDataReader
            Dim dt2 As New DataTable
            dr2 = cm2.ExecuteReader
            dt2.Load(dr2)
            GridView1.DataSource = dt2
            GridView1.DataBind()
            Conn.Close()
        ElseIf str = 2 Then
            str = "tester"
            TextBox4.Text = str
            Dim Conn As New SqlConnection(strCon)
            Conn.Open()

            sql2 = "SELECT * from [PostJob] where Position LIKE '" & str & "'"
            Dim cm2 As New SqlCommand(sql2, Conn)
            Dim dr2 As SqlDataReader
            Dim dt2 As New DataTable
            dr2 = cm2.ExecuteReader
            dt2.Load(dr2)
            GridView1.DataSource = dt2
            GridView1.DataBind()
            Conn.Close()
        ElseIf str = 3 Then
            str = "Web"
            TextBox4.Text = str
            Dim Conn As New SqlConnection(strCon)
            Conn.Open()

            sql2 = "SELECT * from [PostJob] where Position LIKE '" & str & "'"
            Dim cm2 As New SqlCommand(sql2, Conn)
            Dim dr2 As SqlDataReader
            Dim dt2 As New DataTable
            dr2 = cm2.ExecuteReader
            dt2.Load(dr2)
            GridView1.DataSource = dt2
            GridView1.DataBind()
            Conn.Close()
        ElseIf str = 4 Then
            str = "Data"
            TextBox4.Text = str
            Dim Conn As New SqlConnection(strCon)
            Conn.Open()

            sql2 = "SELECT * from [PostJob] where Position LIKE '%" & str & "% %"
            Dim cm2 As New SqlCommand(sql2, Conn)
            Dim dr2 As SqlDataReader
            Dim dt2 As New DataTable
            dr2 = cm2.ExecuteReader
            dt2.Load(dr2)
            GridView1.DataSource = dt2
            GridView1.DataBind()
            Conn.Close()
        End If
        Dim DB As String = ""
        Dim EG As String = ""
        Dim CP As String = ""
        Dim SC As String = ""
        Dim n As String = ""
        If database >= 3 Then

            DB = "ความสามารถของคุณเหมาะสมกับงานDATA Baseไปปุ่มค้นหาและดูงานสายDATA" + System.Environment.NewLine
        ElseIf database < 3 Then
            DB = "ความสามารถด้านDATA Base ของคุณค่อนข้างน้อยแนะนำให้หาข้อมูลเดี่ยวกับData Base เพื่อให้เหมาะสมกับงานDATA" + System.Environment.NewLine
        End If
        If eng >= 3 Then
            EG = "ความสามารถภาษาอังกฤษของคุณอยู่ในเกณฑ์ดีลองไปทำงานกับริษัทต่างชาติ" + System.Environment.NewLine
        ElseIf database < 3 Then
            EG = "ความสามารถด้านภาษาอังกฤษค่อนข้างต่ำ คุณลองศึกษาเพิ่มเติม" + System.Environment.NewLine
        End If
        If compro >= 3 Then
            CP = "ความสามารถโปรแกรมมิ่งของคุณอยู่ในเกรณฑ์ดีแนะนำให้ไปที่หน้าค้นหางานและดูงานสายDEV" + System.Environment.NewLine
        ElseIf compro < 3 Then
            CP = "ความสามารถโปรแกรมมิ่งของคุณอยู่ในเกรณฑ์ต่ำแนะนำให้ไปคุณลองศึกษาเพิ่มเติมด้านโปรแกรมมิ่ง" + System.Environment.NewLine
        ElseIf softcon >= 3 Then
            SC = "ความสามารถโปรแกรมมิ่งของคุณอยู่ในเกรณฑ์ดีแนะนำให้ไปที่หน้าค้นหางานและดูงานสายDEV" + System.Environment.NewLine
        ElseIf softcon < 3 Then
            SC = "ความสามารถโปรแกรมมิ่งของคุณอยู่ในเกรณฑ์ต่ำแนะนำให้ไปคุณลองศึกษาเพิ่มเติมด้านโปรแกรมมิ่ง" + System.Environment.NewLine
        End If


        TextBox3.Text = DB + EG + CP + SC

        'TextBox2.Text = str

        'If str = 0 Then
        '    Image11.ImageUrl = "~/IM/man/M1-1.jpg"
        'ElseIf str = 1 Then
        '    Image11.ImageUrl = "~/IM/man/M1-4.jpg"
        'ElseIf str = 2 Then
        '    Image11.ImageUrl = "~/IM/man/M1-3.jpg"
        'ElseIf str = 3 Then
        '    Image11.ImageUrl = "~/IM/man/M1-6.jpg"
        'ElseIf str = 4 Then
        '    Image11.ImageUrl = "~/IM/man/M1-2.jpg"
        'ElseIf str = 5 Then
        '    Image11.ImageUrl = "~/IM/man/M1-5.jpg"
        'ElseIf str = 6 Then
        '    Image11.ImageUrl = "~/IM/man/M1-7.jpg"
        'End If

    End Sub



    'Protected Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged

    'End Sub
    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub
    Protected Sub TextBox4_TextChanged(sender As Object, e As EventArgs) Handles TextBox4.TextChanged

    End Sub
End Class