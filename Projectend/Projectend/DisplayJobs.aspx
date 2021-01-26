<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterStudent.Master" CodeFile="DisplayJobs.aspx.vb" Inherits="DisplayJobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .wrap-login100 {
            font-family: 'Kanit', sans-serif;
            width: 1000px;
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
            font-size: 32px;
            line-height: 1.5;
            color: #666666;
        }

        .txt2 {
            font-family: 'Kanit', sans-serif;
            font-size: 22px;
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
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-login100">
        <div class="wrap-login100">
            <div class="menu-container">
                <a class="txt1">รายละเอียด</a><br />
                <br />
                &nbsp;&nbsp;&nbsp;<asp:Label class="txt2" ID="Label1" runat="server" Text="Label"></asp:Label>
                &nbsp;
                    <a class="txt2">ตำแหน่ง</a>

                <asp:Label class="txt2" ID="Label2" runat="server" Text="Label"></asp:Label>

                <br />

                <a class="txt2">อีเมล</a>
                <asp:Label class="txt2" ID="Label3" runat="server" Text="Label"></asp:Label>
                &nbsp;
                    <a class="txt2">โทรศัพท์</a>
                <asp:Label class="txt2" ID="Label4" runat="server" Text="Label"></asp:Label>

                <br />

                <a class="txt2">เงินเดือน</a>
                <asp:Label class="txt2" ID="Label5" runat="server" Text="Label"></asp:Label>
                &nbsp;
                    <a class="txt2">รายละเอียด</a>
                <asp:Label class="txt2" ID="Label6" runat="server" Text="Label"></asp:Label>

                <br />


                <%--  <div class="menu-container">--%>
                <%--<asp:Button ID="Button1" runat="server" Text="เพิ่มในรายการโปรด" />--%>
           
                <a class="txt2">สถานที่ทำงาน</a>
                <asp:Label  class="txt2" ID="Label7" runat="server" Text="Label"></asp:Label>

                <br />

                <br />
                <asp:ImageButton src="Img/likeheart.png" ID="Button1" runat="server" style="width: 42px; height: 42px; border: 0;" />
              
                <br />

                <iframe id="ContentIframe" runat="server" width="600" height="450" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
               <a hidden> <asp:Label  ID="Label8" runat="server" Text="Label"></asp:Label></a>
            </div>

            <%--  <iframe id="framemap1" width="600" height="450" frameborder="0" style="border: 0;" allowfullscreen="" aria-hidden="false" tabindex="0" runat="server" name="I1"></iframe>--%>
            <%--</div>--%>
        </div>
    </div>

</asp:Content>
