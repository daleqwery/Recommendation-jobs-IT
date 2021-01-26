<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterStudent.Master" CodeFile="StudentSearchJobs2.aspx.vb" Inherits="StudentSearchJobs2" %>

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
                <h2>งานทั้งหมด</h2>
            </div>
            <div class="input101">
            </div>
            <div class="input102">

                <asp:label id="Label12" runat="server" text="ค้นหางาน"></asp:label>
                &nbsp;<asp:textbox id="TextBox12" runat="server"></asp:textbox>
                &nbsp;<asp:button type="button" class="btn btn-primary" id="Button3" runat="server" text="ค้นหา" />
                <br />
                <br />
                <br />
            </div>
            <br />
            <br />
            <div class="input101">
                <asp:gridview id="GridView1" runat="server" autogeneratecolumns="False" allowpaging="True" allowsorting="True" pagesize="5">
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

                    <asp:CommandField SelectText="รายละเอียด" ShowSelectButton="True" />
                </Columns>
            </asp:gridview>
                <asp:sqldatasource id="SqlDataSource1" runat="server" connectionstring="<%$ ConnectionStrings:TDBConnectionString %>" selectcommand="SELECT [NameJob], [Email], [Phone], [Position], [Salary], [Property], [Address], [Latitude], [Longitude] FROM [data_postjobs]"></asp:sqldatasource>
            </div>
        </div>
    </div>
</asp:Content>
