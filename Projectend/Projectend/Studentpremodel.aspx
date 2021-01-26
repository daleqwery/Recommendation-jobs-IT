<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterStudent.Master" CodeFile="Studentpremodel.aspx.vb" Inherits="Studentpremodel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .wrap-login100 {
            font-family: 'Kanit', sans-serif;
            width: 800px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-login100">
        <div class="wrap-login100">

            <div class="menu-container">
                <div class="input101">
                    <h2>ลักษณะของคุณในการทำงาน</h2>
                    </div>
                <div class="input101">
                    
                    </div>
                <div class="input101">
                    <h5>สถานที่ทำงาน</h5>
                    </div>
                <div class="input101">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="1">ใกล้บ้าน</asp:ListItem>
                        <asp:ListItem Value="2">ไกลบ้าน</asp:ListItem>
                    </asp:DropDownList>

                    </div>
                <div class="input101">
                    <h5>รูปแบบการทำงาน</h5>
                    </div>
                <div class="input101">
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="1">ทำงานคนเดียว</asp:ListItem>
                        <asp:ListItem Value="2">ทำงานเป็นคู่</asp:ListItem>
                        <asp:ListItem Value="3">ทำงานกลุ่มเล็ก</asp:ListItem>
                        <asp:ListItem Value="4">ทำงานกลุ่มใหญ่</asp:ListItem>
                    </asp:DropDownList>

                    </div>
                <div class="input101">
                    <asp:button class="login100-form-btn" id="Button1" runat="server" height="44px" text=" เริ่มวิเคราห์" Width="230px" />

                    </div>

                </div>
            </div>
         </div>
</asp:Content>
