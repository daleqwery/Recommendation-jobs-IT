<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterCompany.Master" CodeFile="AnnounceJobs.aspx.vb" Inherits="AnnounceJobs" %>

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

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD4QaHDFzx-c0HZ0azvjBrEnAbBWHMaLKc&v=3.exp&sensor=false">
    </script>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js">
    </script>
    <script type="text/javascript"> 
        var map;
        var marker;
        var customla = <%=Session("Latitude")%>;
        var customlo = <%=Session("Longitude")%>;
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
                <h1 class="auto-style1">ลงทะเบียนฝากงาน</h1>


                <div class="input101">
                    <p class="text6">ตำแหน่ง</p>
                    &nbsp;
                    <asp:TextBox class="input100" type="text" ID="NameJob" runat="server" maxlength="40"></asp:TextBox>


                </div>
                <div class="input101">
                    <p class="text6">อีเมล</p>
                    &nbsp;
                    <asp:TextBox class="input100" type="email" ID="Email" runat="server" ></asp:TextBox>
                </div>
                <div class="input101">
                    <p class="text6">เบอร์โทร</p>
                    &nbsp;
                    <asp:TextBox class="input100" type="tel" ID="Phone" runat="server" maxlength="10"></asp:TextBox>
                </div>
                <div class="input101">
                    <p class="text6">ประเภทงาน</p>
                 
                    &nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                        <asp:ListItem Value="SP001">Hardware</asp:ListItem>
                        <asp:ListItem Value="SP002">Mobile , Wireless Communications</asp:ListItem>
                        <asp:ListItem Value="SP003">MIS</asp:ListItem>
                        <asp:ListItem Value="SP004">IT Security</asp:ListItem>
                        <asp:ListItem Value="SP005">IT Audit</asp:ListItem>
                        <asp:ListItem Value="SP006">Network</asp:ListItem>
                        <asp:ListItem Value="SP007">ดูแลเว็บไซต์ งาน SEO</asp:ListItem>
                        <asp:ListItem Value="SP008">Application Network</asp:ListItem>
                        <asp:ListItem Value="SP009">Programmer</asp:ListItem>
                        <asp:ListItem Value="SP010">Software</asp:ListItem>
                        <asp:ListItem Value="SP011">IT Support</asp:ListItem>
                        <asp:ListItem Value="SP012">ปรึกษาไอที</asp:ListItem>
                        <asp:ListItem Value="SP013">Database</asp:ListItem>
                        <asp:ListItem Value="SP014">Software Tester</asp:ListItem>
                        <asp:ListItem Value="SP015">นักออกแบบ UI/UX</asp:ListItem>
                        <asp:ListItem Value="SP016">Data Science</asp:ListItem>
                        <asp:ListItem Value="Another">อื่นๆ</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input101">
                    
                    <asp:Label class="text6" ID="Label1" runat="server" Text=""></asp:Label>

                    &nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" Enabled="False">
                        <asp:ListItem Value="P001">Developer</asp:ListItem>
                        <asp:ListItem Value="P002">Network</asp:ListItem>
                        <asp:ListItem Value="P003">Tester</asp:ListItem>
                        <asp:ListItem Value="P004">Web Developer</asp:ListItem>
                        <asp:ListItem Value="P005">Data Analyst</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input101">
                       <asp:Label class="text6" ID="Label2" runat="server" Text=""></asp:Label>
                    &nbsp;
                    <asp:TextBox class="input100" type="text" ID="SubPosition" runat="server" maxlength="40"></asp:TextBox>
                </div>
                <div class="input101">
                    <p class="text6">เงินเดือน</p>
                    &nbsp;
                    

                    <asp:DropDownList ID="DropDownList3" runat="server">
                        <asp:ListItem>15,000-20,000</asp:ListItem>
                        <asp:ListItem>20,000-25,000</asp:ListItem>
                        <asp:ListItem>25,000-30,000</asp:ListItem>
                        <asp:ListItem>30,000-35,000</asp:ListItem>
                        <asp:ListItem>35,000-40,000</asp:ListItem>
                        <asp:ListItem>40,000-50,000</asp:ListItem>
                        <asp:ListItem>ต่อลองได้</asp:ListItem>
                    </asp:DropDownList>

                </div>
                <div class="input101">
                    <p class="text6">รายละเอียด</p>
                    &nbsp;
                    <asp:TextBox class="input100" type="text" ID="Propertyjob" runat="server" maxlength="40"></asp:TextBox>
                </div>
                <div class="input101">
                    <p class="text6">ที่อยู่</p>
                    &nbsp;&nbsp;
                </div>

                <div class="input101">
                    <asp:TextBox class="input100" type="text" ID="TextBoxla" runat="server" Width="150px" placeholder="ละติจูด"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox class="input100" type="text" ID="TextBoxlo" runat="server" Width="150px" placeholder="ลองจิจูด"></asp:TextBox>

                    <asp:ImageButton src="Img/search.png" ID="ImageButton1" runat="server" Style="width: 42px; height: 42px; border: 0;" />

                    &nbsp;
        
                    <a href="https://maps.google.com/?saddr=My%20Location&daddr=myDestinationAddress" target="_blank">
                        <img src="Img/location.jpg" alt="current location" style="width: 42px; height: 42px; border: 0;">
                    </a>
                </div>

                <div class="input101">
                    <div id="myMap"></div>
                   <%-- <input id="address" type="text" style="width: 600px;" name="d1" /><br />--%>
                    <a hidden>
                        <input type="text" id="latitude" placeholder="Latitude" name="d2" />
                        <input type="text" id="longitude" placeholder="Longitude" name="d3" />
                    </a>
                </div>
                <div class="input101">
                    <input id="address" type="text" style="width: 600px;" name="d1" /><br />

                </div>

                <div class="input101">
                    <asp:Button class="login100-form-btn" ID="Button1" runat="server" Height="45px" Text="ประกาศรับสมัครงาน" />
                </div>


            </div>
        </div>
    </div>
    </div>
    </div>
</asp:Content>
