<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterStudent.Master" CodeFile="StudentGrade.aspx.vb" Inherits="StudentGrade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .column {
            float: left;
            width: 25%;
            padding: 0 10px;
        }

        .row {
            margin: 0 -5px;
        }

            .row:after {
                content: "";
                display: table;
                clear: both;
            }

        @media screen and (max-width: 600px) {
            .column {
                width: 100%;
                display: block;
                margin-bottom: 20px;
            }
        }

        .wrap-login100 {
            font-family: 'Kanit', sans-serif;
            width: 400px;
            height: 700px;
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
            padding: 0 10px;
        }
        .wrap-login200 {
            font-family: 'Kanit', sans-serif;
            width: 400px;
            height: 50px;
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
            padding: 0 10px;
            text-align: center;
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
            width: 25%;
            z-index: 2;
            text-align: center;
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

        .input101 {
            width: 100%;
            height: 10%;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding-top: 20px;
            padding-bottom: 20px;
            padding-left: 20px;
            padding-right: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-login100">
        <div class="wrap-login200">
            <h1>กรุณาระบุผลการเรียนของท่าน</h1>
            </div>
        <div class="row">
            <div class="column">
                <div class="wrap-login100">
                   <div class="input101">
                    <h2>ปีการศึกษาที่ 1</h2>
                       </div>
                    <div class="input101">
                        <asp:label id="Label1" runat="server" text="สาขาเรียน "></asp:label>
                        &nbsp;&nbsp;

                        <asp:dropdownlist id="major" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="cs">comsci</asp:ListItem>
                        <asp:ListItem Value="it">IT</asp:ListItem>
                    </asp:dropdownlist>
                    </div>

                <div class="input101">
                    <asp:label id="Label8" runat="server" text="เกรดเฉลี่ยรวม "></asp:label>

                    &nbsp;&nbsp;<asp:dropdownlist id="grade" runat="server">
                        <asp:ListItem Value="2.00-2.50">2.51-3.00</asp:ListItem>
                        <asp:ListItem Value="2.51-3.00">2.00-2.50</asp:ListItem>
                        <asp:ListItem Value="3.01-3.50">3.01-3.50</asp:ListItem>
                    </asp:dropdownlist>
                </div>
                <div class="input101">
                    <asp:label id="Label3" runat="server" text="Intro Com "></asp:label>


                    &nbsp;&nbsp;<asp:dropdownlist id="intro" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
                </div>
                <div class="input101">
                    <asp:label id="Label2" runat="server" text="Computer Programming "></asp:label>

                    &nbsp;&nbsp;<asp:dropdownlist id="compro" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
                </div>
                <div class="input101">
                    <asp:label id="Label4" runat="server" text="Digital Logic "></asp:label>


                    &nbsp;&nbsp;<asp:dropdownlist id="logic" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>

                </div>

            </div>
        </div>










        <div class="column">


            <div class="wrap-login100">
                  <div class="input101">
                    <h2>ปีการศึกษาที่ 2</h2>
                       </div>
                <div class="input101">
                    <asp:label id="Label14" runat="server" text="Fundamental of Computing "></asp:label>


                    &nbsp;&nbsp;<asp:dropdownlist id="funda" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
                </div>
                <div class="input101">
                    <asp:label id="Label5" runat="server" text="Software Constuction "></asp:label>

                    &nbsp;&nbsp;<asp:dropdownlist id="softcontruc" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
                </div>
                <div class="input101">
                    <asp:label id="Label6" runat="server" text="Data Stucture "></asp:label>

                    &nbsp;&nbsp;<asp:dropdownlist id="datastuc" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
                </div>
                <div class="input101">
                    <asp:label id="Label17" runat="server" text="PPL "></asp:label>

                    &nbsp;&nbsp;<asp:dropdownlist id="ppl" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
                </div>
                <div class="input101">
                    <asp:label id="Label18" runat="server" text="Database "></asp:label>

                    &nbsp;&nbsp;<asp:dropdownlist id="dbase" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
                </div>
                <div class="input101">
                    <asp:label id="Label21" runat="server" text="Algorithm Design "></asp:label>

                    &nbsp;&nbsp;<asp:dropdownlist id="alogr" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>

                </div>
            </div>

        </div>







    <div class="column">

        <div class="wrap-login100">
            <div class="input101">
                    <h2>ปีการศึกษาที่ 3</h2>
                       </div>
            <div class="input101">
                <asp:label id="Label25" runat="server" text="System Analysis "></asp:label>

                &nbsp;&nbsp;<asp:dropdownlist id="sa" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
            </div>
            <div class="input101">
                <asp:label id="Label22" runat="server" text="Assembly "></asp:label>


                &nbsp;&nbsp;<asp:dropdownlist id="assem" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
            </div>
            <div class="input101">
                <asp:label id="Label23" runat="server" text="Automata "></asp:label>

                &nbsp;&nbsp;<asp:dropdownlist id="automa" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
            </div>
            <div class="input101">

                <asp:label id="Label7" runat="server" text="OS "></asp:label>

                &nbsp;&nbsp;<asp:dropdownlist id="os" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
            </div>
            <div class="input101">
                <asp:label id="Label26" runat="server" text="Protocol "></asp:label>

                &nbsp;&nbsp;<asp:dropdownlist id="proto" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
            </div>
            <div class="input101">
                <asp:label id="Label27" runat="server" text="Computer Business "></asp:label>

                &nbsp;&nbsp;<asp:dropdownlist id="combus" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
            </div>

            <div class="input101">
                <asp:label id="Label29" runat="server" text="Mobile Application "></asp:label>

                &nbsp;&nbsp;<asp:dropdownlist id="mobile" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
            </div>
        </div>
    </div>













    <div class="column">

        <div class="wrap-login100">
            <div class="input101">
                    <h2>ปีการศึกษาที่ 4</h2>
                       </div>
            <div class="input101">
                <asp:label id="Label30" runat="server" text="Image Analysis "></asp:label>

                &nbsp;&nbsp;<asp:dropdownlist id="imag" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
            </div>
            <div class="input101">
                <asp:label id="Label31" runat="server" text="Artificial Intelligence "></asp:label>

                &nbsp;&nbsp;<asp:dropdownlist id="ai" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
            </div>
            <div class="input101">
                <asp:label id="Label32" runat="server" text="Natural Language Processing "></asp:label>

                &nbsp;&nbsp;<asp:dropdownlist id="nlp" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
            </div>
            <div class="input101">
                <asp:label id="Label33" runat="server" text="IoT , Embedded "></asp:label>

                &nbsp;&nbsp;<asp:dropdownlist id="iot" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
            </div>
            <div class="input101">
                <asp:label id="Label34" runat="server" text="Web Service , Web Application "></asp:label>

                &nbsp;&nbsp;<asp:dropdownlist id="web" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
            </div>
            <div class="input101">
                <asp:label id="Label36" runat="server" text="HCI"></asp:label>

                &nbsp;&nbsp;<asp:dropdownlist id="hci" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
            </div>
            <div class="input101">
                <asp:label id="Label37" runat="server" text="ความถนัดในวิชาคณิตศาสตร์ "></asp:label>

                &nbsp;&nbsp;<asp:dropdownlist id="math" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>
            </div>
            <div class="input101">
                <asp:label id="Label38" runat="server" text="ความถนัดในวิชาอังกฤษ "></asp:label>

                &nbsp;&nbsp;<asp:dropdownlist id="eng" runat="server">
                        <asp:ListItem Value="0">ไม่ลงเรียน</asp:ListItem>
                        <asp:ListItem Value="5">A</asp:ListItem>
                        <asp:ListItem Value="4">B+</asp:ListItem>
                        <asp:ListItem Value="4">B</asp:ListItem>
                        <asp:ListItem Value="3">C+</asp:ListItem>
                        <asp:ListItem Value="3">C</asp:ListItem>
                        <asp:ListItem Value="2">D+</asp:ListItem>
                        <asp:ListItem Value="1">D</asp:ListItem>
                    </asp:dropdownlist>

            </div>

        </div>
    </div>















    <div class="input101">
        <asp:button class="login100-form-btn" id="Button1" runat="server" height="46px" text="ตกลง" width="170px" />
        &nbsp;
               
    </div>


    </div>
    </div>
</asp:Content>
