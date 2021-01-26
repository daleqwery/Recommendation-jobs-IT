<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterAdmin.Master" CodeFile="AdminSearchCompany.aspx.vb" Inherits="AdminSearchCompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .wrap-login100 {
            font-family: 'Kanit', sans-serif;
            width: 1800px;
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
            justify-content: center;
        }

        .menu-container {
            left: 0;
            width: 50%;
            z-index: 2;
            text-align: center;
        }

        h2 {
            font-family: 'Kanit', sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-login100">
        <div class="wrap-login100">
            <div class="input101">
                <h2>ข้อมูลบริษัททั้งหมด</h2>
            </div>
            <div class="input101">
            </div>
            <div class="input102">

                <asp:Label ID="Label12" runat="server" Text="ค้นหางาน"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                &nbsp;<asp:Button type="button" class="btn btn-primary" ID="Button3" runat="server" Text="ค้นหา" />
                <br />
                <br />
                </div>
                <br />
                <br />
                <div class="input101">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" PageSize="5">
                        <Columns>
                            <%-- <asp:BoundField DataField="Map" HeaderText="Map" SortExpression="Map" />--%>
                            <asp:BoundField DataField="user_id" HeaderText="ลำดับผู้ใช้" SortExpression="user_id" />
                            <asp:BoundField DataField="username" HeaderText="ชื่อผู้ใช้" SortExpression="username" />
                            <asp:BoundField DataField="firstname" HeaderText="ชื่อ" SortExpression="firstname" />
                            <asp:BoundField DataField="lastname" HeaderText="นามสกุล" SortExpression="lastname" />
                            <asp:BoundField DataField="gender" HeaderText="เพศ" SortExpression="gender" />
                            <asp:BoundField DataField="phone" HeaderText="โทรศัพท์" SortExpression="phone" />
                            <asp:BoundField DataField="email" HeaderText="อีเมล" SortExpression="email" />
                            <asp:BoundField DataField="address" HeaderText="ที่อยู่" SortExpression="address" />

                            <asp:BoundField DataField="province" HeaderText="จังหวัด" SortExpression="province" />
                            <asp:CommandField ShowSelectButton="True" SelectText="แก้ไข" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:TDBConnectionString %>" SelectCommand="SELECT [user_id], [username], [firstname], [lastname], [gender], [phone], [email], [address], [province] FROM [data_user]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TDBConnectionString %>" SelectCommand="SELECT [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude] FROM [data_postjobs]"></asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
