<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterAdmin.Master" CodeFile="AdminMenu.aspx.vb" Inherits="AdminMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        bodyall {
            font-family: 'Kanit', sans-serif;
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
            font-size: 24px;
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


        .cards-list {
            z-index: 0;
            width: 100%;
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .card {
            margin: 30px auto;
            width: 300px;
            height: 300px;
            border-radius: 40px;
            box-shadow: 5px 5px 30px 7px rgba(0,0,0,0.25), -5px -5px 30px 7px rgba(0,0,0,0.22);
            cursor: pointer;
            transition: 0.4s;
        }

            .card .card_image {
                width: inherit;
                height: inherit;
                border-radius: 40px;
            }

                .card .card_image img {
                    width: inherit;
                    height: inherit;
                    border-radius: 40px;
                    object-fit: cover;
                }

            .card .card_title {
                text-align: center;
                border-radius: 0px 0px 40px 40px;
                font-family: sans-serif;
                font-weight: bold;
                font-size: 30px;
                margin-top: -80px;
                height: 40px;
            }

            .card:hover {
                transform: scale(0.9, 0.9);
                box-shadow: 5px 5px 30px 15px rgba(0,0,0,0.25), -5px -5px 30px 15px rgba(0,0,0,0.22);
            }

        .title-white {
            color: white;
        }

        .title-black {
            color: black;
        }

        @media all and (max-width: 500px) {
            .card-list {
                /* On small screens, we are no longer using row direction but column */
                flex-direction: column;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="bodyall">

        <div class="container-login100">
            <div class="wrap-login100">
                <div class="menu-container">
                    <a class="txt1">สวัสดี</a>
                    <br />
                    <asp:label class="txt2" id="Label1" runat="server" text="คุณ"></asp:label>
                    &nbsp;<asp:label class="txt2" id="firstname" runat="server" text="Label"></asp:label>

                    &nbsp;<asp:label class="txt2" id="lastname" runat="server" text="Label"></asp:label>
                    <br />
                    <asp:label class="txt2" id="Label2" runat="server" text="โทรศัพท์"></asp:label>
                    &nbsp;<asp:label class="txt2" id="phone" runat="server" text="Label"></asp:label>
                    <br />
                    <asp:label class="txt2" id="Label3" runat="server" text="อีเมล"></asp:label>
                    &nbsp;<asp:label class="txt2" id="email" runat="server" text="Label"></asp:label>
                    <br />
                    <asp:label class="txt2" id="Label4" runat="server" text="ที่อยู่"></asp:label>
                    &nbsp;<asp:label class="txt2" id="address" runat="server" text="Label"></asp:label>
                    <br />
                    <asp:label class="txt2" id="Label5" runat="server" text="จังหวัด"></asp:label>
                    &nbsp;<asp:label class="txt2" id="province" runat="server" text="Label"></asp:label>

                    <br />

                    <br />

                   
                    <div class="input101">
                        
                    </div>
                  <a class="txt1">เริ่มกันเลยไหม</a>
                    <div class="input101">
                        
                    </div>
                    <div class="cards-list">

                        <div class="card 1">
                            <div class="card_image">
                                <asp:imagebutton class="card_image" src="Img/adminjob.png" id="ImageButton1" runat="server" />

                            </div>
                            <div class="card_title title-white">
                                
                            </div>
                        </div>

                        <div class="card 2">
                            <div class="card_image">
                                <asp:imagebutton class="card_image" src="Img/adminstu.png" id="ImageButton2" runat="server" />
                            </div>
                            <div class="card_title title-white">
                                
                            </div>
                        </div>

                        <div class="card 3">
                            <div class="card_image">
                                <asp:imagebutton class="card_image" src="Img/admincom.png" id="ImageButton3" runat="server" />
                            </div>
                            <div class="card_title">
                                
                            </div>
                        </div>

                   

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
