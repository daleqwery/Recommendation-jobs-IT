<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterCompany.Master" CodeFile="CompanyEditAnnounceJobs.aspx.vb" Inherits="CompanyEditAnnounceJobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #myMap {
            height: 350px;
            width: 680px;
        }

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

        text6 {
            font-family: 'Kanit', sans-serif;
            padding: 0 0 0 0;
        }
    </style>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD4QaHDFzx-c0HZ0azvjBrEnAbBWHMaLKc&v=3.exp&sensor=false&hl=th">
    </script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js">
    </script>
    <script type="text/javascript"> 
        var customla = <%=Session("Latitude")%>;
        var customlo = <%=Session("Longitude")%>;


        var map;
        var marker;
        var myLatlng = new google.maps.LatLng(customla, customlo);
        var geocoder = new google.maps.Geocoder();
        var infowindow = new google.maps.InfoWindow();

        function PassValue(obj) {
            document.getElementById("TextBox1").value = latitude.value;
        }

        function initialize() {
            var mapOptions = {
                zoom: 11,
                center: myLatlng,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            map = new google.maps.Map(document.getElementById("myMap"), mapOptions);

            marker = new google.maps.Marker({
                map: map,
                position: myLatlng,
                draggable: true
            });

            geocoder.geocode({ 'latLng': myLatlng }, function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    if (results[0]) {
                        $('#latitude,#longitude').show();
                        $('#address').val(results[0].formatted_address);
                        $('#latitude').val(marker.getPosition().lat());
                        $('#longitude').val(marker.getPosition().lng());
                        infowindow.setContent(results[0].formatted_address);
                        infowindow.open(map, marker);
                        document.getElementById("a1").value = lat;
                    }
                }
            });

            google.maps.event.addListener(marker, 'dragend', function () {

                geocoder.geocode({ 'latLng': marker.getPosition() }, function (results, status) {
                    if (status == google.maps.GeocoderStatus.OK) {
                        if (results[0]) {
                            $('#address').val(results[0].formatted_address);
                            $('#latitude').val(marker.getPosition().lat());
                            $('#longitude').val(marker.getPosition().lng());
                            infowindow.setContent(results[0].formatted_address);
                            infowindow.open(map, marker);

                        }
                    }
                });
            });

        }
        google.maps.event.addDomListener(window, 'load', initialize);

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-login100">
        <div class="wrap-login100">

            <div class="login100-form-title">
                <h1 class="auto-style1">แก้ไขข้อมูลการฝากงาน</h1>

                <div class="input101">
                    <p class="text6">
                        สถานะ
                        <asp:label id="status" runat="server" text="Label" style="color: red"></asp:label>

                    </p>
                    &nbsp;
                    <p class="text6">
                        วันที่ประกาศ
                        <asp:label id="postdate" runat="server" text="Label" style="color: red"></asp:label>
                    </p>

                    &nbsp;
                    
                </div>
                <div class="input101">
                    <p class="text6">ตำแหน่ง</p>
                    &nbsp;
                    <asp:textbox class="input100" type="text" id="NameJob" runat="server" maxlength="40"></asp:textbox>


                </div>
                <div class="input101">
                    <p class="text6">อีเมล</p>
                    &nbsp;
                    <asp:textbox class="input100" type="email" id="Email" runat="server"></asp:textbox>
                </div>
                <div class="input101">
                    <p class="text6">เบอร์โทร</p>
                    &nbsp;
                    <asp:textbox class="input100" type="tel" id="Phone" runat="server" maxlength="12"></asp:textbox>
                </div>
                <div class="input101">
                    <p class="text6">ประเภทงาน</p>
                    &nbsp;
                    <asp:textbox class="input100" type="text" id="Position" runat="server" enabled="False"></asp:textbox>
                </div>


                <div class="input101">
                    <p class="text6">เงินเดือน</p>
                    &nbsp;
                    

                    <asp:dropdownlist id="DropDownList3" runat="server">
                        <asp:ListItem>15,000-20,000</asp:ListItem>
                        <asp:ListItem>20,000-25,000</asp:ListItem>
                        <asp:ListItem>25,000-30,000</asp:ListItem>
                        <asp:ListItem>30,000-35,000</asp:ListItem>
                        <asp:ListItem>35,000-40,000</asp:ListItem>
                        <asp:ListItem>40,000-50,000</asp:ListItem>
                        <asp:ListItem>ต่อลองได้</asp:ListItem>
                    </asp:dropdownlist>

                </div>
                <div class="input101">
                    <p class="text6">รายละเอียด</p>
                    &nbsp;
                    <asp:textbox class="input100" type="text" id="Propertyjob" runat="server" maxlength="40"></asp:textbox>
                </div>
                <div class="input101">
                    <p class="text6">ที่อยู่</p>
                    &nbsp;&nbsp;
                </div>
                <div class="input101">
                    <asp:textbox class="input100" type="text" id="TextBoxla" runat="server" width="150px" placeholder="ละติจูด"></asp:textbox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:textbox class="input100" type="text" id="TextBoxlo" runat="server" width="150px" placeholder="ลองจิจูด"></asp:textbox>

                    <asp:imagebutton src="Img/search.png" id="ImageButton1" runat="server" style="width: 42px; height: 42px; border: 0;" />

                    &nbsp;
        
                    <a href="https://maps.google.com/?saddr=My%20Location&daddr=myDestinationAddress" target="_blank">
                        <img src="Img/location.jpg" alt="current location" style="width: 42px; height: 42px; border: 0;">
                    </a>
                </div>
                <div class="input101">
                    <div id="myMap"></div>
                    <input id="address" type="text" style="width: 600px;" name="d1" /><br />
                    <a hidden>
                        <input type="text" id="latitude" placeholder="Latitude" name="d2" />
                        <input type="text" id="longitude" placeholder="Longitude" name="d3" />
                    </a>
                </div>

                <div class="input101">
                    <asp:button class="login100-form-btn" id="Button1" runat="server" height="42px" text="แก้ไขข้อมูล" />
                    &nbsp;
                    &nbsp;
              
                    <asp:button class="login100-form-btn" id="Button2" runat="server" height="42px" text="ลบ" />
                    &nbsp;
                    &nbsp;
               
                    <asp:button class="login100-form-btn" id="Button3" runat="server" height="42px" text="เปิด/ปิด การรับสมัคร" />
                </div>

            </div>
        </div>
    </div>

</asp:Content>
