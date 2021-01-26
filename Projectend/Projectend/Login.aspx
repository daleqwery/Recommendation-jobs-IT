<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/NewMaster.Master" CodeFile="Login.aspx.vb" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Kanit&display=swap" rel="stylesheet">
    <style type="text/css">
        fontset {
            font-family: 'Kanit', sans-serif;
        }
        body {
            margin: 0;
            padding: 0;
            font-family: sans-serif;
            background: #34495e;
        }

        .wrap-login100 {
            font-family: 'Kanit', sans-serif;
            width: 640px;
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
            padding: 70px 130px 33px 95px;
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

        .login100-form-title {
            font-family: Poppins-Bold;
            font-size: 24px;
            color: #333333;
            line-height: 1.2;
            text-align: center;
            width: 100%;
            display: block;
            padding-bottom: 54px;
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

        .input100 {
            font-family: Poppins-Medium;
            font-size: 15px;
            line-height: 1.5;
            color: #666666;
            display: block;
            width: 50%;
            background: #e6e6e6;
            height: 50px;
            border-radius: 25px;
            padding: 0 30px 0 68px;
        }

   

        .login100-form-btn {
            font-family: 'Kanit', sans-serif;
            font-size: 15px;
            line-height: 1.5;
            color: #fff;
            text-transform: uppercase;
            width: 25%;
            height: 100px;
            border-radius: 25px;
            background: #57b846;
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

            .login100-form-btn:hover {
                background: #333333;
            }

        h1 {
            font-family: 'Kanit', sans-serif;
        }

        h2 {
            font-family: 'Kanit', sans-serif;
        }

        .auto-style1 {
            margin-top: 2
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-login100">
        <div class="wrap-login100">

            <div class="login100-form-title">
                <h1 class="auto-style1">เข้าสู่ระบบ</h1>
                <%-- <h2 class="auto-style1">เข้าสู่ระบบ</h2>--%>
                <div class="input101">
                    <asp:TextBox class="input100" type="text" required ID="TextBox1" runat="server" placeholder="ชื่อผู้ใช้งาน" maxlength="20"
                        oninvalid="this.setCustomValidity('กรุณาใส่ชื่อผู้ใช้งาน')"
                        oninput="this.setCustomValidity('')"></asp:TextBox>
                </div>

                <div class="input101">
                    <asp:TextBox class="input100" type="password" required ID="TextBox2" runat="server" placeholder="รหัสผ่าน" maxlength="20"
                        oninvalid="this.setCustomValidity('กรุณาใส่รหัสผ่าน')"
                        oninput="this.setCustomValidity('')"></asp:TextBox>
                </div>
                <div class="input101">
                </div>
                <div class="input101">
                    <asp:Button class="login100-form-btn" ID="Button1" runat="server" Height="41px" Text=" เข้าสู่ระบบ" />
                </div>

                <div class="input101">
                    <asp:LinkButton class="fontset" ID="LinkButton6" runat="server">สมัครสมาชิก</asp:LinkButton>

                </div>
                <%--   <p>

                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style10">เข้าสู่ระบบ</td>
                    <td class="auto-style48"></td>
                </tr>
                <tr>
                    <td class="auto-style49">
                        <asp:label id="Label1" runat="server" text="ชื่อผู้ใช้ :"></asp:label>
                    </td>
                    <td class="auto-style50">
                        <asp:textbox id="TextBox1" runat="server" height="20px" width="316px"></asp:textbox>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style49">
                        <asp:label id="Label2" runat="server" text="รหัสผ่าน :"></asp:label>
                    </td>
                    <td class="auto-style50">
                        <asp:textbox id="TextBox2" runat="server" height="20px" textmode="Password" width="316px"></asp:textbox>
                    </td>
                    <td class="auto-style20">&nbsp;</td>
                </tr>

                <table class="auto-style51">
                    <tr>
                        <td class="auto-style55">&nbsp;&nbsp;
                <div class="auto-style54">
                </div>
                        </td>
                        <td class="auto-style60">
                            <div class="auto-style59">
                                <asp:radiobuttonlist id="RadioButtonList3" runat="server" height="32px" repeatdirection="Horizontal" width="347px">
                        <asp:ListItem Selected="True" Value="0">ผู้ดูแลระบบ</asp:ListItem>
                        <asp:ListItem Value="1">บริษัท</asp:ListItem>
                        <asp:ListItem Value="2">นิสิต</asp:ListItem>
                    </asp:radiobuttonlist>
                            </div>
                            <br />
                            <asp:button id="Button1" runat="server" height="32px" text=" เข้าสู่ระบบ" width="127px" />
                            &nbsp;&nbsp;
                <asp:button id="Button2" runat="server" height="32px" text="ย้อนกลับ" width="127px" />
                        </td>
                        <td class="auto-style57"></td>
                    </tr>
                    <tr>
                        <td class="auto-style55">&nbsp;&nbsp;&nbsp;
                <br />
                        </td>
                        <td class="auto-style60">
                            <asp:linkbutton id="LinkButton6" runat="server">สมัครสมาชิกบริษัท</asp:linkbutton>
                            <br />
                            <asp:linkbutton id="LinkButton7" runat="server">สมัครสมาชิกนิสิต</asp:linkbutton>
                        </td>
                        <td class="auto-style57"></td>
                    </tr>
                </table>
            </p>--%>
            </div>
        </div>
    </div>
</asp:Content>
