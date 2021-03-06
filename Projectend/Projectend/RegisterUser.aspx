﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/NewMaster.Master" CodeFile="RegisterUser.aspx.vb" Inherits="RegisterUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            font-family: 'Kanit', sans-serif;
            background: #34495e;
        }

        .wrap-login100 {
            font-family: 'Kanit', sans-serif;
            width: 760px;
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

        .button101 {
            width: 100%;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding-top: 0px;
        }

        .input102 {
            width: 100%;
            display: -webkit-box;
            display: -webkit-flex;
            display: -moz-box;
            display: -ms-flexbox;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding-top: 1px;
        }

        .input100 {
            font-family: 'Kanit', sans-serif;
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
            width: 30%;
            height: 300px;
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

        h4 {
            font-family: 'Kanit', sans-serif;
        }

        text6 {
            font-family: 'Kanit', sans-serif;
            padding: 0 0 0 0;
        }
    </style>

    <script type="text/javascript"> 

   

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-login100">
        <div class="wrap-login100">

            <div class="login100-form-title">
                <h1 class="auto-style1">สมัครสมาชิก</h1>

                <div class="input101">
                    <h4 class="auto-style1">ประเภทสมาชิก</h4>
                    <%--<p class="text6">ประเภทสมาชิก</p>--%>&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="UT001">นักศึกษา</asp:ListItem>
                        <asp:ListItem Value="UT002">บริษัท</asp:ListItem>
                    </asp:DropDownList>
                </div>


                <div class="input101">
                    <asp:TextBox class="input100" type="text" required ID="TextBox1" runat="server" placeholder="ชื่อผู้ใช้งาน" maxlength="15"
                        oninvalid="this.setCustomValidity('กรุณาระบุชื่อผู้ใช้งาน')"
                        oninput="this.setCustomValidity('')"></asp:TextBox>
                </div>

                <div class="input101">
                    <asp:TextBox class="input100" type="password" required
                        ID="TextBox2" runat="server" placeholder="รหัสผ่าน" oninvalid="this.setCustomValidity('กรุณาระบุรหัสผ่าน')"  maxlength="18"
                        oninput="this.setCustomValidity('')"></asp:TextBox>
                </div>
                <div class="input101">
                    <asp:TextBox class="input100" type="password" required
                        ID="TextBox3" runat="server" placeholder="ยืนยันรหัสผ่าน" oninvalid="this.setCustomValidity('ระบุรหัสผ่านอีกครั้ง')" maxlength="18"
                        oninput="this.setCustomValidity('')"></asp:TextBox>
                     <span id='message'></span>
                </div>

             




                <div class="input101">
                    <asp:TextBox class="input100" type="text" required ID="TextBox4" runat="server" placeholder="ชื่อ" maxlength="20"
                        oninvalid="this.setCustomValidity('กรุณาระบุชื่อ')"
                        oninput="this.setCustomValidity('')"></asp:TextBox>
                </div>
                <div class="input101">
                    <asp:TextBox class="input100" type="text" required ID="TextBox5" runat="server" placeholder="นามสกุล" maxlength="20"
                        oninvalid="this.setCustomValidity('กรุณาระบุสกุล')"
                        oninput="this.setCustomValidity('')"></asp:TextBox>
                </div>

                <div class="input101">
                    <h4 class="auto-style1">เพศ</h4>
                    <%--  <p class="text6">เพศ</p--%>&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem class="dropdown-item" Value="Male">ชาย</asp:ListItem>
                        <asp:ListItem class="dropdown-item" Value="Female">หญิง</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input101">
                    <asp:TextBox class="input100" type="tel" required ID="TextBox6" runat="server" placeholder="โทรศัพท์"  maxlength="10"
                        oninvalid="this.setCustomValidity('กรุณาระบุเบอร์ให้ถูกต้อง')"
                        oninput="this.setCustomValidity('')"></asp:TextBox>
                </div>
                <div class="input101">
                    <asp:TextBox class="input100" type="email" required ID="TextBox7" runat="server" placeholder="อีเมล" 
                        oninvalid="this.setCustomValidity('กรุณาระบุอีเมลให้ถูกต้อง')"
                        oninput="this.setCustomValidity('')"></asp:TextBox>
                </div>
                <div class="input101">
                    <asp:TextBox class="input100" type="text" required ID="TextBox8" runat="server" placeholder="ที่อยู่" maxlength="40"
                        oninvalid="this.setCustomValidity('กรุณาระบุที่อยู่')"
                        oninput="this.setCustomValidity('')"></asp:TextBox>
                </div>
                <div class="input101">
                    <h4 class="auto-style1">จังหวัด</h4>
                    <%--<p class="text6">จังหวัด</p>--%>&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem Value="Krung Thep Maha Nakhon">กรุงเทพมหานคร</asp:ListItem>
                        <asp:ListItem Value="Krabi">กระบี่</asp:ListItem>
                        <asp:ListItem Value="Kanchanaburi">กาญจนบุรี</asp:ListItem>
                        <asp:ListItem Value="Kalasin">กาฬสินธุ์</asp:ListItem>
                        <asp:ListItem Value="Kamphaeng">กำแพงเพชร</asp:ListItem>
                        <asp:ListItem Value="Khon Kaen">ขอนแก่น</asp:ListItem>
                        <asp:ListItem Value="Chanthaburi">จันทบุรี</asp:ListItem>
                        <asp:ListItem Value="Chachoengsao">ฉะเชิงเทรา</asp:ListItem>
                        <asp:ListItem Value="Chonburi">ชลบุรี</asp:ListItem>
                        <asp:ListItem Value="Chainat">ชัยนาท</asp:ListItem>
                        <asp:ListItem Value="Chaiyaphum">ชัยภูมิ</asp:ListItem>
                        <asp:ListItem Value="Chumphon">ชุมพร</asp:ListItem>
                        <asp:ListItem Value="Chiang Rai">เชียงราย</asp:ListItem>
                        <asp:ListItem Value="Chiang Mai">เชียงใหม่</asp:ListItem>
                        <asp:ListItem Value="Trang">ตรัง</asp:ListItem>
                        <asp:ListItem Value="Trat">ตราด</asp:ListItem>
                        <asp:ListItem Value="Tak">ตาก</asp:ListItem>
                        <asp:ListItem Value="Nakhon Nayok">นครนายก</asp:ListItem>
                        <asp:ListItem Value="Nakhon Pathom">นครปฐม</asp:ListItem>
                        <asp:ListItem Value="Nakhon Phanom">นครพนม</asp:ListItem>
                        <asp:ListItem Value="Nakhon Ratchasima">นครราชสีมา</asp:ListItem>
                        <asp:ListItem Value="Nakhon Si Thammarat">นครศรีธรรมราช</asp:ListItem>
                        <asp:ListItem Value="Nakhon Sawan">นครสวรรค์</asp:ListItem>
                        <asp:ListItem Value="Nonthaburi">นนทบุรี</asp:ListItem>
                        <asp:ListItem Value="Narathiwat">นราธิวาส</asp:ListItem>
                        <asp:ListItem Value="Nan">น่าน</asp:ListItem>
                        <asp:ListItem Value="Buriram">บุรีรัมย์</asp:ListItem>
                        <asp:ListItem Value="Bueng Kan">บึงกาฬ</asp:ListItem>
                        <asp:ListItem Value="Pathum Thani">ปทุมธานี</asp:ListItem>
                        <asp:ListItem Value="Prachuap Khiri Khan">ประจวบคีรีขันธ์</asp:ListItem>
                        <asp:ListItem Value="Prachinburi">ปราจีนบุรี</asp:ListItem>
                        <asp:ListItem Value="Pattani">ปัตตานี</asp:ListItem>
                        <asp:ListItem Value="Phra Nakhon Si Ayutthaya">พระนครศรีอยุธยา</asp:ListItem>
                        <asp:ListItem Value="Phayao">พะเยา</asp:ListItem>
                        <asp:ListItem Value="Phang Nga">พังงา</asp:ListItem>
                        <asp:ListItem Value="Phatthalung">พัทลุง</asp:ListItem>
                        <asp:ListItem Value="Phichit">พิจิตร</asp:ListItem>
                        <asp:ListItem Value="Phitsanulok">พิษณุโลก</asp:ListItem>
                        <asp:ListItem Value="Phetchaburi">เพชรบุรี</asp:ListItem>
                        <asp:ListItem Value="Phetchabun">เพชรบูรณ์</asp:ListItem>
                        <asp:ListItem Value="Phrae">แพร่</asp:ListItem>
                        <asp:ListItem Value="Phuket">ภูเก็ต</asp:ListItem>
                        <asp:ListItem Value="Maha Sarakham">มหาสารคาม</asp:ListItem>
                        <asp:ListItem Value="Mukdahan">มุกดาหาร</asp:ListItem>
                        <asp:ListItem Value="Mae Hong Son">แม่ฮ่องสอน</asp:ListItem>
                        <asp:ListItem Value="Yala">ยะลา</asp:ListItem>
                        <asp:ListItem Value="Yasothon">ยโสธร</asp:ListItem>
                        <asp:ListItem Value="Ranong">ระนอง</asp:ListItem>
                        <asp:ListItem Value="Rayong">ระยอง</asp:ListItem>
                        <asp:ListItem Value="Ratchaburi">ราชบุรี</asp:ListItem>
                        <asp:ListItem Value="Roi Et">ร้อยเอ็ด</asp:ListItem>
                        <asp:ListItem Value="Lopburi">ลพบุรี</asp:ListItem>
                        <asp:ListItem Value="Lampang">ลำปาง</asp:ListItem>
                        <asp:ListItem Value="Lamphun">ลำพูน</asp:ListItem>
                        <asp:ListItem Value="Loei">เลย</asp:ListItem>
                        <asp:ListItem Value="Sisaket">ศรีสะเกษ</asp:ListItem>
                        <asp:ListItem Value="Sakon Nakhon">สกลนคร</asp:ListItem>
                        <asp:ListItem Value="Songkhla">สงขลา</asp:ListItem>
                        <asp:ListItem Value="Satun">สตูล</asp:ListItem>
                        <asp:ListItem Value="Samut Prakan">สมุทรปราการ</asp:ListItem>
                        <asp:ListItem Value="Samut Songkhram">สมุทรสงคราม</asp:ListItem>
                        <asp:ListItem Value="Samut Sakhon">สมุทรสาคร</asp:ListItem>
                        <asp:ListItem Value="Saraburi">สระบุรี</asp:ListItem>
                        <asp:ListItem Value="Sa Kaeo">สระแก้ว</asp:ListItem>
                        <asp:ListItem Value="Sing Buri">สิงห์บุรี</asp:ListItem>
                        <asp:ListItem Value="Suphan Buri">สุพรรณบุรี</asp:ListItem>
                        <asp:ListItem Value="Surat Thani">สุราษฎร์ธานี</asp:ListItem>
                        <asp:ListItem Value="Surin">สุรินทร์</asp:ListItem>
                        <asp:ListItem Value="Sukhothai">สุโขทัย</asp:ListItem>
                        <asp:ListItem Value="Nong Khai">หนองคาย</asp:ListItem>
                        <asp:ListItem Value="Nong Bua Lamphu">หนองบัวลำภู</asp:ListItem>
                        <asp:ListItem Value="Amnat Charoen">อำนาจเจริญ</asp:ListItem>
                        <asp:ListItem Value="Udon Thani">อุดรธานี</asp:ListItem>
                        <asp:ListItem Value="Uttaradit">อุตรดิตถ์</asp:ListItem>
                        <asp:ListItem Value="Uthai Thani">อุทัยธานี</asp:ListItem>
                        <asp:ListItem Value="Ubon Ratchathani">อุบลราชธานี</asp:ListItem>
                        <asp:ListItem Value="Ang Thong">อ่างทอง</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input101">
                    <asp:Label ID="Label2" runat="server" Text="" style="COLOR: red"></asp:Label>
                </div>
                <div class="button101">
                    <br />
                    <br />
                    <asp:Button class="login100-form-btn" ID="Button1" runat="server" Height="44px" Text="สมัครสมาชิก" />
                </div>


            </div>
        </div>
    </div>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
</asp:Content>
