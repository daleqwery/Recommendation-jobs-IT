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
    Dim strCon As String = ConfigurationManager.ConnectionStrings("TDBConnectionString").ConnectionString
    Dim sql2 As String
    Dim sql3 As String
    Dim sql4 As String
    Dim sql5 As String
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim addiden1 As Int16
    Dim addiden2 As Int16
    Dim Latitudemap As String
    Dim Longitudemap As String
    Dim minimap As String
    Dim operation As Integer
    Dim nearorfar As Integer




    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        addiden1 = Session("studentiden1")
        addiden2 = Session("studentiden2")

        minimap = "https://maps.google.com/maps?q=+" + Latitudemap + "," + Longitudemap + "&hl=th&z=12&amp;output=embed"

        Iframe1.Attributes.Add("src", minimap)
        da = New SqlDataAdapter("SELECT * FROM data_grade WHERE user_id= '" & Session("userid") & "'", strCon)

        ds.Clear()
        da.Fill(ds, "data_userstudent")

        With ds.Tables("data_userstudent").Rows(0)

            typestudent = .Item("major")
            intro = .Item("intro")
            compro = .Item("compro")
            logic = .Item("logic")
            funda = .Item("funda")
            softcon = .Item("softcon")
            datastuc = .Item("datastuc")
            ppl = .Item("ppl")
            database = .Item("databasedb")
            algor = .Item("algor")
            asmby = .Item("asmby")
            automa = .Item("automa")
            os = .Item("os")
            sa = .Item("sa")
            protocal = .Item("protocal")
            combus = .Item("combus")
            mobileapp = .Item("mobileapp")
            image = .Item("image")
            ai = .Item("ai")
            nlp = .Item("nlp")
            iot = .Item("iot")
            webapp = .Item("webapp")

            hci = .Item("hci")
            math = .Item("math")
            eng = .Item("eng")
            grade = .Item("grade")

        End With

        Dim grade1 As Integer
        Dim grade2 As Integer
        Dim grade3 As Integer
        Dim grade4 As Integer
        Dim grade5 As Integer


        grade1 = (softcon * 2) + (compro * 2)
        grade2 = (hci * 2) + (webapp * 2)
        grade3 = (database * 2) + (sa * 2)
        grade4 = (protocal * 2) + (combus * 2)
        grade5 = (ai * 2) + (image * 2)

        operation = Session("studentiden1")
        nearorfar = Session("studentiden2")

        'label1.Text = grade1
        'label2.Text = grade2
        'label3.Text = grade3
        'label4.Text = grade4
        'label5.Text = grade5



        Session("grade1") = grade1
        Session("grade2") = grade2
        Session("grade3") = grade3
        Session("grade4") = grade4
        Session("grade5") = grade5

        'typestudent = Session("typestudent")
        'intro = Session("grade1")
        'compro = Session("grade2")
        'logic = Session("grade3")
        'funda = Session("grade4")
        'softcon = Session("grade5")
        'datastuc = Session("grade6")
        'ppl = Session("grade7")
        'database = Session("grade8")
        'algor = Session("grade9")
        'asmby = Session("grade10")
        'automa = Session("grade11")
        'os = Session("grade12")
        'sa = Session("grade13")
        'protocal = Session("grade14")
        'combus = Session("grade15")
        'mobileapp = Session("grade16")
        'image = Session("grade17")
        'ai = Session("grade18")
        'nlp = Session("grade19")
        'iot = Session("grade20")
        'webapp = Session("grade21")
        'typestudent = Session("typestudent")
        'hci = Session("grade22")
        'math = Session("grade23")
        'eng = Session("grade24")
        'grade = Session("grade")

        'If Session("typestudent") = "" Then
        '    Response.Write("Session time out")
        '    Exit Sub
        'End If

        'Dim Type_String As String = Session("typestudent")

        If typestudent = "cs" Then
            Model11()

        ElseIf typestudent = "it" Then
            Model11()

        End If

    End Sub


    Public Sub Model11()
        Dim insts As weka.core.Instances = New weka.core.Instances(New java.io.FileReader("C:\Users\delso\Desktop\wekastudent\randommd.arff"))
        Dim inst = New weka.core.Instance(26)

        'inst.setValue(insts.attribute(0), Convert.ToString(grade))
        'inst.setValue(insts.attribute(1), Convert.ToInt16(intro))
        'inst.setValue(insts.attribute(2), Convert.ToInt16(compro))
        'inst.setValue(insts.attribute(3), Convert.ToInt16(logic))
        'inst.setValue(insts.attribute(4), Convert.ToInt16(funda))
        'inst.setValue(insts.attribute(5), Convert.ToInt16(softcon))
        'inst.setValue(insts.attribute(6), Convert.ToInt16(datastuc))
        'inst.setValue(insts.attribute(7), Convert.ToInt16(ppl))
        'inst.setValue(insts.attribute(8), Convert.ToInt16(database))
        'inst.setValue(insts.attribute(9), Convert.ToInt16(algor))
        'inst.setValue(insts.attribute(10), Convert.ToInt16(asmby))
        'inst.setValue(insts.attribute(11), Convert.ToInt16(automa))
        'inst.setValue(insts.attribute(12), Convert.ToInt16(os))
        'inst.setValue(insts.attribute(13), Convert.ToInt16(sa))
        'inst.setValue(insts.attribute(14), Convert.ToInt16(protocal))
        'inst.setValue(insts.attribute(15), Convert.ToInt16(combus))
        'inst.setValue(insts.attribute(16), Convert.ToInt16(mobileapp))
        'inst.setValue(insts.attribute(17), Convert.ToInt16(image))
        'inst.setValue(insts.attribute(18), Convert.ToInt16(ai))
        'inst.setValue(insts.attribute(19), Convert.ToInt16(nlp))
        'inst.setValue(insts.attribute(20), Convert.ToInt16(iot))
        'inst.setValue(insts.attribute(21), Convert.ToInt16(webapp))
        'inst.setValue(insts.attribute(22), Convert.ToInt16(hci))
        'inst.setValue(insts.attribute(23), Convert.ToInt16(math))
        'inst.setValue(insts.attribute(24), Convert.ToInt16(eng))


        inst.setValue(insts.attribute(0), Convert.ToInt16(intro))
        inst.setValue(insts.attribute(1), Convert.ToInt16(compro))
        inst.setValue(insts.attribute(2), Convert.ToInt16(funda))
        inst.setValue(insts.attribute(3), Convert.ToInt16(softcon))
        inst.setValue(insts.attribute(4), Convert.ToInt16(datastuc))
        inst.setValue(insts.attribute(5), Convert.ToInt16(ppl))
        inst.setValue(insts.attribute(6), Convert.ToInt16(database))
        inst.setValue(insts.attribute(7), Convert.ToInt16(asmby))
        inst.setValue(insts.attribute(8), Convert.ToInt16(algor))
        inst.setValue(insts.attribute(9), Convert.ToInt16(automa))
        inst.setValue(insts.attribute(10), Convert.ToInt16(os))
        inst.setValue(insts.attribute(11), Convert.ToInt16(sa))
        inst.setValue(insts.attribute(12), Convert.ToInt16(protocal))
        inst.setValue(insts.attribute(13), Convert.ToInt16(combus))
        inst.setValue(insts.attribute(14), Convert.ToInt16(mobileapp))
        inst.setValue(insts.attribute(15), Convert.ToInt16(image))
        inst.setValue(insts.attribute(16), Convert.ToInt16(ai))
        inst.setValue(insts.attribute(17), Convert.ToInt16(nlp))
        inst.setValue(insts.attribute(18), Convert.ToInt16(iot))
        inst.setValue(insts.attribute(19), Convert.ToInt16(webapp))
        inst.setValue(insts.attribute(20), Convert.ToInt16(hci))
        inst.setValue(insts.attribute(21), Convert.ToInt16(math))
        inst.setValue(insts.attribute(22), Convert.ToInt16(eng))
        inst.setValue(insts.attribute(23), Convert.ToInt16(operation))
        inst.setValue(insts.attribute(24), Convert.ToInt16(nearorfar))


        insts.add(inst)
        insts.setClassIndex(insts.numAttributes() - 1)
        'Dim model As weka.classifiers.trees.J48graft = New weka.classifiers.trees.J48graft
        'Dim model As weka.classifiers.trees.RandomForest = New weka.classifiers.trees.RandomForest
        Dim model As weka.classifiers.trees.RandomTree = New weka.classifiers.trees.RandomTree
        'Dim model As weka.classifiers.functions.Logistic = New weka.classifiers.functions.Logistic
        model.buildClassifier(insts)


        Dim str As String
        Dim info1 As String


        Dim provice As String = "%" + Session("province") + "%"

        str = model.classifyInstance(insts.lastInstance())
        str = str

        If str = 0 Then
            str = "Developer"
            TextBox4.Text = str
            Dim Conn As New SqlConnection(strCon)
            Conn.Open()

            'sql2 = "SELECT * from [data_postjobs] where Position LIKE '" & "Hardware" & "' or Position LIKE '" & "Programmer" & "' or Position LIKE '" & "Software" & "'"
            img1.ImageUrl = "~/Img/dev.png"

            sql2 = "SELECT * from data_postjobs as a INNER JOIN data_subposition as b on a.SubPosition_id = b.SubPosition_id where Position_id = '" & "P001" & "' and Address LIKE '" & provice & "'"


            TextBoxinfo1.Text = "สายงานด้าน Programmer & Developer"
            TextBoxinfo4.Text = "ทำงานด้าน Android Developer, Mobile Developer, Software Developer, Cobol Programmer, Java Programmer"
            TextBoxinfo2.Text = "C, C+, Java, COBAL, IOS, Android"
            TextBoxinfo3.Text = "ซึ่งรายได้บุคลากรจะเริ่มต้นที่ 18,000 บาท และถ้าพัฒนาความรู้  "
            TextBoxinfo5.Text = "สั่งสมประสบการณ์เพิ่มทักษะใหม่ๆ สามารถสร้างรายได้สูงสุดอยู่ที่ 130,000 บาท"

            Dim cm2 As New SqlCommand(sql2, Conn)
            Dim dr2 As SqlDataReader
            Dim dt2 As New DataTable
            dr2 = cm2.ExecuteReader
            dt2.Load(dr2)
            GridView1.DataSource = dt2
            GridView1.DataBind()
            Conn.Close()


            da = New SqlDataAdapter("SELECT * from data_postjobs as a INNER JOIN data_subposition as b on a.SubPosition_id = b.SubPosition_id where Position_id = '" & "P001" & "' and Address LIKE '" & provice & "'", strCon)

            ds.Clear()
            da.Fill(ds, "data_postjobs")

            With ds.Tables("data_postjobs").Rows(0)
                Session("Jobid") = .Item("Job_id")
                Session("NameJobmap") = .Item("NameJob")
                Session("Positionmap") = .Item("Position")

                Session("Latitudemap") = .Item("Latitude")
                Session("Longitudemap") = .Item("Longitude")

            End With
            Latitudemap = Session("Latitudemap")
            Longitudemap = Session("Longitudemap")
            Labelmap1.Text = Session("NameJobmap")
            Labelmap2.Text = Session("Positionmap")
            minimap = "https://maps.google.com/maps?q=+" + Latitudemap + "," + Longitudemap + "&hl=th&z=12&amp;output=embed"

            Iframe1.Attributes.Add("src", minimap)



        ElseIf str = 1 Then
            str = "Network"
            TextBox4.Text = str
            Dim Conn As New SqlConnection(strCon)
            Conn.Open()
            img1.ImageUrl = "~/Img/network.png"
            sql2 = "SELECT * from data_postjobs as a INNER JOIN data_subposition as b on a.SubPosition_id = b.SubPosition_id where Position_id = '" & "P002" & "' and Address LIKE '" & provice & "'"




            TextBoxinfo1.Text = "สายงานด้าน Network & System"
            TextBoxinfo4.Text = "ส่วนใหญ่จะเป็นการแก้ปัญหาให้ user และการกู้ระบบเมื่อระบบล่มหรือขัดข่อง"
            TextBoxinfo2.Text = "server AD, DNS, DHCP, MAIL, File,  Printer, Router, internet link"
            TextBoxinfo3.Text = "ทำทุกอย่างเกี่ยวกับระบบ IT ในองค์กร"
            TextBoxinfo5.Text = "หรือเป็นผู้ที่มีหน้าที่ดูแลและบริหารระบบเครือข่ายคอมพิวเตอร์ขององค์กร"

            Dim cm2 As New SqlCommand(sql2, Conn)
            Dim dr2 As SqlDataReader
            Dim dt2 As New DataTable
            dr2 = cm2.ExecuteReader
            dt2.Load(dr2)
            GridView1.DataSource = dt2
            GridView1.DataBind()
            Conn.Close()



            da = New SqlDataAdapter("SELECT * from data_postjobs as a INNER JOIN data_subposition as b on a.SubPosition_id = b.SubPosition_id where Position_id = '" & "P002" & "' and Address LIKE '" & provice & "'", strCon)

            ds.Clear()
            da.Fill(ds, "data_postjobs")

            With ds.Tables("data_postjobs").Rows(0)
                Session("Jobid") = .Item("Job_id")
                Session("NameJobmap") = .Item("NameJob")
                Session("Positionmap") = .Item("Position")

                Session("Latitudemap") = .Item("Latitude")
                Session("Longitudemap") = .Item("Longitude")

            End With
            Latitudemap = Session("Latitudemap")
            Longitudemap = Session("Longitudemap")
            Labelmap1.Text = Session("NameJobmap")
            Labelmap2.Text = Session("Positionmap")
            minimap = "https://maps.google.com/maps?q=+" + Latitudemap + "," + Longitudemap + "&hl=th&z=12&amp;output=embed"

            Iframe1.Attributes.Add("src", minimap)


        ElseIf str = 2 Then
            str = "Tester"
            TextBox4.Text = str
            Dim Conn As New SqlConnection(strCon)
            Conn.Open()
            img1.ImageUrl = "~/Img/test.png"
            sql2 = "SELECT * from data_postjobs as a INNER JOIN data_subposition as b on a.SubPosition_id = b.SubPosition_id where Position_id = '" & "P003" & "' and Address LIKE '" & provice & "'"

            info1 = "สายงานด้าน Network & System" & vbNewLine &
             "ถือเป็นหัวใจของงานด้านไอทีในทุกองค์กร เพราะการวางแผนเครือข่ายพื้นฐาน (Network) " & vbNewLine &
            " และการจัดการระบบของหน่วยงานจะมีประสิทธิภาพมากน้อยแค่ไหนก็ขึ้นอยู่กับคนทำงานในสายนี้" & vbNewLine &
           "ซึ่งผู้ที่ทำงานดูแลระบบและเครือข่าย มีชื่อตำแหน่ง เช่น Software Engineer, Software Tester, Software QA " & vbNewLine &
          " Hardware Engineer, Solution Architect, Program Analyst, Network Engineer " & vbNewLine &
        "Network Administrator, System Administrator, Business System Analyst เป็นต้น"



            TextBoxinfo1.Text = "สายงานด้าน Software Testing"
            TextBoxinfo4.Text = "Software tester หรือ Quality Assurance Engineer หรือ Quality Engineer "
            TextBoxinfo2.Text = "Setup Environment, Execute Testing"
            TextBoxinfo3.Text = "เช่นการประเมินและปรับปรุงคุณภาพซอฟต์แวร์ของบริษัท"
            TextBoxinfo5.Text = "เพื่อค้นหาข้อผิดพลาดหรือข้อบกพร่องของซอฟต์แวร์ให้ปรากฎออกมาเพื่อหาแนวทางอุดช่องโหว่ของปัญหาที่เกิดขึ้นหรืออาจเกิดขึ้น"
            Dim cm2 As New SqlCommand(sql2, Conn)
            Dim dr2 As SqlDataReader
            Dim dt2 As New DataTable
            dr2 = cm2.ExecuteReader
            dt2.Load(dr2)
            GridView1.DataSource = dt2
            GridView1.DataBind()
            Conn.Close()


            da = New SqlDataAdapter("SELECT * from data_postjobs as a INNER JOIN data_subposition as b on a.SubPosition_id = b.SubPosition_id where Position_id = '" & "P003" & "' and Address LIKE '" & provice & "'", strCon)

            ds.Clear()
            da.Fill(ds, "data_postjobs")

            With ds.Tables("data_postjobs").Rows(0)
                Session("Jobid") = .Item("Job_id")
                Session("NameJobmap") = .Item("NameJob")
                Session("Positionmap") = .Item("Position")

                Session("Latitudemap") = .Item("Latitude")
                Session("Longitudemap") = .Item("Longitude")

            End With
            Latitudemap = Session("Latitudemap")
            Longitudemap = Session("Longitudemap")
            Labelmap1.Text = Session("NameJobmap")
            Labelmap2.Text = Session("Positionmap")
            minimap = "https://maps.google.com/maps?q=+" + Latitudemap + "," + Longitudemap + "&hl=th&z=12&amp;output=embed"

            Iframe1.Attributes.Add("src", minimap)


        ElseIf str = 3 Then
            str = "Web Developer"
            TextBox4.Text = str
            Dim Conn As New SqlConnection(strCon)
            Conn.Open()

            'sql2 = "SELECT * from [data_postjobs] where Position LIKE '" & "UI/UX" & "' or Position LIKE '" & "SEO" & "' "
            img1.ImageUrl = "~/Img/web.png"
            sql2 = "SELECT * from data_postjobs as a INNER JOIN data_subposition as b on a.SubPosition_id = b.SubPosition_id where Position_id = '" & "P004" & "' and Address LIKE '" & provice & "'"




            TextBoxinfo1.Text = "สายงานด้าน Website"
            TextBoxinfo4.Text = "มักจะเกี่ยวข้องกับส่วนของเว็บไซต์ที่มีการโต้ตอบกับผู้ใช้หรือ user "
            TextBoxinfo2.Text = "HTML, JavaScript, Functional Programming, CSS"
            TextBoxinfo3.Text = "โดยที่นักพัฒนาหรือ developer จะต้องดูแลส่วนที่ซับซ้อนแต่สร้างสรรค์"
            TextBoxinfo5.Text = "ไม่ว่าจะเป็นส่วนต่อประสานกับผู้ใช้, ประสบการณ์ของผู้ใช้งาน, และการเข้าถึงเว็บไซต์"
            Dim cm2 As New SqlCommand(sql2, Conn)
            Dim dr2 As SqlDataReader
            Dim dt2 As New DataTable
            dr2 = cm2.ExecuteReader
            dt2.Load(dr2)
            GridView1.DataSource = dt2
            GridView1.DataBind()
            Conn.Close()



            da = New SqlDataAdapter("SELECT * from data_postjobs as a INNER JOIN data_subposition as b on a.SubPosition_id = b.SubPosition_id where Position_id = '" & "P004" & "' and Address LIKE '" & provice & "'", strCon)

            ds.Clear()
            da.Fill(ds, "data_postjobs")

            With ds.Tables("data_postjobs").Rows(0)
                Session("Jobid") = .Item("Job_id")
                Session("NameJobmap") = .Item("NameJob")
                Session("Positionmap") = .Item("Position")

                Session("Latitudemap") = .Item("Latitude")
                Session("Longitudemap") = .Item("Longitude")

            End With
            Latitudemap = Session("Latitudemap")
            Longitudemap = Session("Longitudemap")
            Labelmap1.Text = Session("NameJobmap")
            Labelmap2.Text = Session("Positionmap")
            minimap = "https://maps.google.com/maps?q=+" + Latitudemap + "," + Longitudemap + "&hl=th&z=12&amp;output=embed"

            Iframe1.Attributes.Add("src", minimap)


        ElseIf str = 4 Then
            str = "Data Analyst"
            TextBox4.Text = str
            Dim Conn As New SqlConnection(strCon)
            Conn.Open()

            'sql2 = "SELECT * from [data_postjobs] where Address LIKE '" & "%Chon Buri%" & "' or Position LIKE '" & "Data Science" & "' or Position LIKE '" & "Database" & "' or Position LIKE '" & "MIS" & "'or Position LIKE '" & "SEO" & "'or Position LIKE '" & "IT Audit" & "'or Position LIKE '" & "IT Security" & "'or Position LIKE '" & "IT Consultant" & "' "
            img1.ImageUrl = "~/Img/data.png"
            sql2 = "SELECT * from data_postjobs as a INNER JOIN data_subposition as b on a.SubPosition_id = b.SubPosition_id where Position_id = '" & "P005" & "' and Address LIKE '" & provice & "'"




            TextBoxinfo1.Text = "สายงานด้าน Database Management"
            TextBoxinfo4.Text = "บุคลากรในการจัดการระบบฐานข้อมูลถือมีความสำคัญในองค์กร "
            TextBoxinfo2.Text = "Database Administrator, Oracle DBA/Specialist"
            TextBoxinfo3.Text = "สามารถนำข้อมูลไปวิเคราะห์สู่การวางแผนการใช้ข้อมูลเพื่อให้ตอบโจทย์การใช้งานของธุรกิจได้"
            TextBoxinfo5.Text = "โดยบุคลากรในสายงานนี้มีความมั่นคงในสายงานสูง"
            Dim cm2 As New SqlCommand(sql2, Conn)
            Dim dr2 As SqlDataReader
            Dim dt2 As New DataTable
            dr2 = cm2.ExecuteReader
            dt2.Load(dr2)
            GridView1.DataSource = dt2
            GridView1.DataBind()
            Conn.Close()


            da = New SqlDataAdapter("SELECT * from data_postjobs as a INNER JOIN data_subposition as b on a.SubPosition_id = b.SubPosition_id where Position_id = '" & "P005" & "' and Address LIKE '" & provice & "'", strCon)

            ds.Clear()
            da.Fill(ds, "data_postjobs")

            With ds.Tables("data_postjobs").Rows(0)
                Session("Jobid") = .Item("Job_id")
                Session("NameJobmap") = .Item("NameJob")
                Session("Positionmap") = .Item("Position")

                Session("Latitudemap") = .Item("Latitude")
                Session("Longitudemap") = .Item("Longitude")

            End With
            Latitudemap = Session("Latitudemap")
            Longitudemap = Session("Longitudemap")
            Labelmap1.Text = Session("NameJobmap")
            Labelmap2.Text = Session("Positionmap")
            minimap = "https://maps.google.com/maps?q=+" + Latitudemap + "," + Longitudemap + "&hl=th&z=12&amp;output=embed"

            Iframe1.Attributes.Add("src", minimap)


        End If






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
        Response.Redirect("DisplayJobs.aspx")


    End Sub

    Protected Sub Unnamed1_Click(sender As Object, e As EventArgs)
        Response.Redirect("DisplayJobs.aspx")
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
                GridView1.Rows(0).Cells(0).Text = "ไม่มีงานที่แนะนำ"

                GridView1.Rows(0).Cells(0).Font.Bold = True
            End If
        Catch ex As Exception

        End Try
    End Sub
End Class