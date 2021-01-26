<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterCompany.Master" CodeFile="CompanyViewJobs.aspx.vb" Inherits="CompanyViewJobs" %>
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
                <h2>งานของฉัน</h2>
            </div>
            <div class="input102">
           
            
                <asp:Label ID="Label12" runat="server" Text="ค้นหางาน"></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                &nbsp;<asp:Button type="button" class="btn btn-primary" ID="Button3" runat="server" Text="ค้นหา" />
                <br />
                <br />
                <br />
          </div>
            <br />
            <br />
             <div class="input101">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" PageSize="5">
                <Columns>
                    <%-- <asp:BoundField DataField="Map" HeaderText="Map" SortExpression="Map" />--%>
                    <asp:BoundField DataField="Job_id" HeaderText="ลำดับงาน" SortExpression="Job_id" />
                    <asp:BoundField DataField="NameJob" HeaderText="ชื่องาน" SortExpression="NameJob" />
                    <asp:BoundField DataField="Email" HeaderText="อีเมล์" SortExpression="Email" />
                    <asp:BoundField DataField="Phone" HeaderText="เบอร์โทร" SortExpression="Phone" />
                    <asp:BoundField DataField="Position" HeaderText="ตำแหน่ง" SortExpression="Position" />
                    <asp:BoundField DataField="Salary" HeaderText="เงินเดือน" SortExpression="Salary" />
                    <asp:BoundField DataField="Property" HeaderText="รายละเอียด" SortExpression="Property" />
                    <asp:BoundField DataField="Address" HeaderText="ที่อยู่" SortExpression="Address" />
                 
                    <asp:CommandField SelectText="แก้ไขงาน" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:TDBConnectionString %>" SelectCommand="SELECT [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude] FROM [data_postjobs]"></asp:SqlDataSource>
      </div>
        </div>
    </div>
</asp:Content>
