<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="asp.netloginpage.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblUserDetails" runat="server" Text=""></asp:Label>
            <asp:Button ID="btmLogout" runat="server" Text="Logout" OnClick="btmLogout_Click" style="width: 57px" />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Account" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="SendMoney" style="height: 26px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="RequestAndSplit" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Statements and Search Transactions" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        New Messages<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="requestID" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="626px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="requestID" HeaderText="requestID" ReadOnly="True" SortExpression="requestID" />
                <asp:BoundField DataField="requester" HeaderText="requester" SortExpression="requester" />
                <asp:BoundField DataField="requestDateTime" HeaderText="requestDateTime" SortExpression="requestDateTime" />
                <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                <asp:BoundField DataField="memo" HeaderText="memo" SortExpression="memo" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoginDBConnectionString %>" SelectCommand="SELECT [requestID], [requester], [requestDateTime], [amount], [memo] FROM [RequestPayment] WHERE ([payeeUserID] = @payeeUserID)">
            <SelectParameters>
                <asp:SessionParameter Name="payeeUserID" SessionField="UserName" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </div>
    </form>
</body>
</html>
