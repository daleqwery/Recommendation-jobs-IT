<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/MasterStudent.Master" CodeFile="model2.aspx.vb" Inherits="model1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        header {
            padding: 30px;
            text-align: center;
            font-size: 35px;   
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
    <p>
        <h2 style="text-align: center;">ผลการวิเคราะห์</h2>
        <h3>คุณเหมาะกับตำแหน่ง ->
            <asp:TextBox ID="TextBox4" runat="server" Height="27px" Width="297px"></asp:TextBox>
        </h3>
        <br />
    </p>

    <%--<p>
        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="324px" Width="553px"></asp:TextBox>
    </p>--%>
    <p>
        <%--<asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="73px" Width="286px"></asp:TextBox>--%>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="NameJobs" HeaderText="NameJobs" SortExpression="NameJobs" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Saraly" HeaderText="Saraly" SortExpression="Saraly" />
                <asp:BoundField DataField="GPA" HeaderText="GPA" SortExpression="GPA" />
                <asp:BoundField DataField="Property" HeaderText="Property" SortExpression="Property" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectEndConnectionString %>" SelectCommand="SELECT [NameJobs], [Address], [Email], [Position], [Phone], [Saraly], [GPA], [Property] FROM [PostJob]"></asp:SqlDataSource>
    </p>
    <p>
        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Height="324px" Width="553px"></asp:TextBox>

    </p>
    <br />
    <br />
    <br />
</header>
</asp:Content>