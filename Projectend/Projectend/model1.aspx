<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterStudent.Master" CodeFile="model1.aspx.vb" Inherits="model1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .wrap-login100 {
            font-family: 'Kanit', sans-serif;
            width: 1400px;
            background: #fff;
            border-radius: 10px;
            overflow: hidden;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            padding: 130px 130px 130px 130px;
        }

        .container-login100 {
            font-family: 'Kanit', sans-serif;
            width: 100%;
            min-height: 100vh;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            padding: 15px;
            background: #9053c7;
            background: -webkit-linear-gradient(-135deg, #0CF3C5, #253CD4);
            background: -o-linear-gradient(-135deg, #0CF3C5, #253CD4);
            background: -moz-linear-gradient(-135deg, #0CF3C5, #253CD4);
            background: linear-gradient(-135deg, #0CF3C5, #253CD4);
        }

        .txt1 {
            font-family: 'Kanit', sans-serif;
            font-size: 24px;
            line-height: 1.5;
            color: #666666;
        }


        .txt2 {
            font-family: 'Kanit', sans-serif;
            font-size: 16px;
            line-height: 1.5;
            color: #666666;
        }

        .menu-container {
            left: 0;
            width: 100%;
            z-index: 2;
            text-align: center;
        }

        .login100-form-btn {
            font-family: 'Kanit', sans-serif;
            font-size: 15px;
            line-height: 1.5;
            color: #fff;
            text-transform: uppercase;
            width: 50%;
            height: 50px;
            border-radius: 25px;
            background: #da80b1;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 0 25px;
            -webkit-transition: all 0.4s;
            -o-transition: all 0.4s;
            -moz-transition: all 0.4s;
            transition: all 0.4s;
        }

        .input101 {
            width: 100%;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding-top: 20px;
        }

        .input102 {
            width: 50%;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding-top: 20px;
        }

        .imgset {
            height: 250px;
            width: 250px;
            border-radius: 50%;
        }


        .card {
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            transition: 0.3s;
            /*width: 40%;*/
            width: 300px;
        }

            .card:hover {
                box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
            }

        .container {
            padding: 2px 16px;
        }

        .input111 {
            width: 100%;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding-top: 20px;
        }
    </style>

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', { 'packages': ['corechart'] });
        google.charts.setOnLoadCallback(drawChart);
        var grap1 = <%= Session("grade1") %>;
        var grap2 = <%= Session("grade2") %>;
        var grap3 = <%= Session("grade3") %>;
        var grap4 = <%= Session("grade4") %>;
        var grap5 = <%= Session("grade5") %>;



        function drawChart() {


            var data = google.visualization.arrayToDataTable([
                ['ความถนัดทางสายงาน', 'เทียบกับสายงานอื่น'],
                ['Programing', grap1],
                ['Web Design', grap2],
                ['Database', grap3],
                ['Network', grap4],
                ['Machine Learning', grap5]
            ]);

            var options = {
                title: 'ความถนัดทางสายงาน'
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart'));

            chart.draw(data, options);
        }
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-login100">
        <div class="wrap-login100">

            <div class="menu-container">
                <h2 style="text-align: center;">คุณเหมาะกับตำแหน่ง</h2>
                <p style="text-align: center;">&nbsp;</p>
                <h1>
                    <asp:Label ID="TextBox4" runat="server" Text="Label"></asp:Label></h1>
                <br />
                <br />
                <asp:Image class="imgset" ID="img1" runat="server"></asp:Image>
                <br />
                <br />

                <h3>คำแนะนำ</h3>
                <asp:Label ID="TextBoxinfo1" class="txt1" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="TextBoxinfo4" class="txt1" runat="server" Text="Label"></asp:Label>
                <br />
                 <br />
                <h3>ลักษณะงาน</h3>
               
                <asp:Label ID="TextBoxinfo2" class="txt1" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Label ID="TextBoxinfo3" class="txt1" runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="TextBoxinfo5" class="txt1" runat="server" Text="Label"></asp:Label>
            </div>
            <div class="input101">
                
            </div>
            <div class="input101">
                <h2>เราขอแนะนำ</h2>
            </div>


            <div class="input102">
                <div id="piechart" style="width: 400px; height: 400px;"></div>
            </div>
            <div class="input102">

                <div class="card">
                    <iframe id="Iframe1" runat="server" width="300" height="300" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>


                    <div class="container">

                        <h4>
                            <asp:Label runat="server" Text="" ID="Labelmap1"></asp:Label></h4>
                        <asp:Label runat="server" Text="" ID="Labelmap2"></asp:Label>
                        <br />
                        <asp:LinkButton runat="server" OnClick="Unnamed1_Click">เพิ่มเติม</asp:LinkButton>
                        <%--<p>IT Security</p>--%>
                    </div>
                </div>
            </div>
            <div class="input101">
            </div>
            <div class="input101">
                <h2>งานที่เหมาะกับคุณ</h2>
            </div>
            <div class="input111">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" PageSize="5">
                    <Columns>
                        <%-- <asp:BoundField DataField="Map" HeaderText="Map" SortExpression="Map" />--%>
                        <asp:BoundField DataField="Job_id" HeaderText="ลำดับงาน" SortExpression="Job_id" />
                        <asp:BoundField DataField="NameJob" HeaderText="ชื่องาน" SortExpression="NameJob" />
                        <asp:BoundField DataField="Email" HeaderText="อีเมล์" SortExpression="Email" />
                        <asp:BoundField DataField="Phone" HeaderText="เบอร์โทร" SortExpression="Phone" />
                        <asp:BoundField DataField="Position" HeaderText="ตำแหน่ง" SortExpression="Position" />
                        <asp:BoundField DataField="Salary" HeaderText="เงินเดือน" SortExpression="Salary" />
                        <asp:BoundField DataField="Property" HeaderText="รายละเอียด" SortExpression="Property" />
                        <asp:CommandField SelectText="เพิ่มเติม" ShowSelectButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TDBConnectionString %>" SelectCommand="SELECT [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address] FROM [data_postjobs]"></asp:SqlDataSource>
            </div>

            <%--  <asp:label runat="server" text="Label" id="label1"></asp:label>
            <br />
            <asp:label runat="server" text="Label" id="label2"></asp:label>
            <br />
            <asp:label runat="server" text="Label" id="label3"></asp:label>
            <br />
            <asp:label runat="server" text="Label" id="label4"></asp:label>
            <br />
            <asp:label runat="server" text="Label" id="label5"></asp:label>
            <br />--%>
        </div>
    </div>

</asp:Content>
