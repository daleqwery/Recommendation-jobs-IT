<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/NewMaster.Master" CodeFile="Home.aspx.vb" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>TDB | Recommendation System Jobs | เว็บไซต์วิเคราะห์และแนะนำงานคอมพิวเตอร์</title>
    <style type="text/css">
        bodyall {
            font-family: 'Kanit', sans-serif;
        }

        .display-4 {
            font-family: 'Kanit', sans-serif;
            font-size: 3.5rem;
            font-weight: 300;
            line-height: 1.2;
        }

        h2 {
            font-weight: 800 !important
        }

        h2 {
            page-break-after: avoid;
        }

        h2 {
            orphans: 3;
            widows: 3;
        }

        h2 {
            font-size: 2rem;
        }

        h2 {
            margin-bottom: 0.5rem;
            font-weight: 500;
            line-height: 1.2;
        }

        h2 {
            margin-top: 0;
            margin-bottom: 0.5rem;
        }

        * {
            text-shadow: none !important;
            box-shadow: none !important;
        }

        * {
            box-sizing: border-box;
        }

        .auto-style5 {
            margin-left: 350px;
            font-weight: bold;
            font-size: x-large;
        }

        .auto-style6 {
            width: 100%;
        }

        .auto-style11 {
            height: 49px;
            font-size: x-large;
        }

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
            font-family: 'Kanit', sans-serif;
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
            font-size: 28px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="bodyall">
        <div class="container-login100">
            <div class="wrap-login100">

                <div class="input101">
                    <h1 class="display-4">TDB Recommendation System Jobs</h1>
                    <h1 class="display-4">เว็บไซต์วิเคราะห์และแนะนำงานคอมพิวเตอร์</h1>
                    </div>
                <div class="input101">
                    </div>
                <div class="input101">
                    <asp:Button class="login100-form-btn" ID="เริ่มต้นการใช้งาน" runat="server" Text="เริ่มต้นการใช้งาน" Width="325px" />

                    <br />
                    <br />

                </div>
                <div class="input101">
                  
                </div>
                <br />

                <section>
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-6 order-lg-2">
                                <div class="p-5">
                                    <img class="img-fluid rounded-circle" src="img/20.jpg" alt="">
                                </div>
                            </div>
                            <div class="col-lg-6 order-lg-1">
                                <div class="p-5">
                                    <h2 class="display-4">งานไอทีกว่า 18 สายงาน</h2>
                                    <p class="bodyall">คัดกรองและจับคู่ตำแหน่งงานแนะนำที่น่าสนใจโดยอิงจากข้อมูลของคุณพร้อมแนะนำตำแหน่งงานที่เหมาะสม ที่จะส่งตรงถึงอีเมลของคุณทุกวัน</p>

                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section>
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <img class="img-fluid rounded-circle" src="img/21.jpg" alt="">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="p-5">
                                    <h2 class="display-4">รวดเร็วและแม่นยำกว่าที่เคย</h2>
                                    <p class="bodyall">พร้อมให้แนะนำและความช่วยเหลือปัญหาในการเลือกสายอาชีพ อย่างรวดเร็วโดยไม่มีค่าใช้จ่าย</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

                <section>
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-lg-6 order-lg-2">
                                <div class="p-5">
                                    <img class="img-fluid rounded-circle" src="img/22.jpg" alt="">
                                </div>
                            </div>
                            <div class="col-lg-6 order-lg-1">
                                <div class="p-5">
                                    <h2 class="display-4">พร้อมแนะนำสถานที่ทำงาน</h2>
                                    <p class="bodyall">ค้นพบโอกาสได้งานดีจากองค์กรชั้นนำมากมายที่นี่ ที่เดียว</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>


            </div>
        </div>
    </div>
</asp:Content>
