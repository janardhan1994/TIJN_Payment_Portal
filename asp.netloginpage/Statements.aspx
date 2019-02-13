<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Statements.aspx.cs" Inherits="asp.netloginpage.Statements" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <asp:Label ID="lblUserDetails" runat="server" Text=""></asp:Label>
            <br />
            <asp:Button ID="btmLogout" runat="server" Text="Logout" OnClick="btmLogout_Click" style="width: 57px; height: 26px;" />
        <table>
            <tr>
       <td><asp:Label ID="Label1" runat="server" Text="Search By Recipient"></asp:Label></td> 
                <td> <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="payeeUserID" DataValueField="payeeUserID" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList></td>
       </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Search By Date"></asp:Label></td>
                <td>Month</td><td> <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
            <asp:ListItem Value="Jan"></asp:ListItem>
            <asp:ListItem Value="Feb"></asp:ListItem>
            <asp:ListItem Value="Mar"></asp:ListItem>
            <asp:ListItem Value="Apr">Apr</asp:ListItem>
            <asp:ListItem>May</asp:ListItem>
            <asp:ListItem Value="Jun">Jun</asp:ListItem>
            <asp:ListItem Value="Jul">Jul</asp:ListItem>
            <asp:ListItem Value="Aug">Aug</asp:ListItem>
            <asp:ListItem Value="Sep"></asp:ListItem>
            <asp:ListItem Value="Oct"></asp:ListItem>
            <asp:ListItem Value="Nov"></asp:ListItem>
            <asp:ListItem Value="Dec"></asp:ListItem>
        </asp:DropDownList></td>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Year"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Year" runat="server"></asp:TextBox>
                </td>
            </tr>
              <tr>
<td></td><td><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-left: 208px" Text="Search" /></td>
              </tr>
            </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LoginDBConnectionString %>" SelectCommand="SELECT [payeeUserID] FROM [SendPayment] WHERE ([payorUserID] = @payorUserID)">
            <SelectParameters>
                <asp:SessionParameter Name="payorUserID" SessionField="UserName" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Panel ID="Panel1" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="PaymentID" DataSourceID="SqlDataSource2" GridLines="Vertical" Width="728px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="PaymentID" HeaderText="PaymentID" InsertVisible="False" ReadOnly="True" SortExpression="PaymentID" />
                    <asp:BoundField DataField="payorUserID" HeaderText="payorUserID" SortExpression="payorUserID" />
                    <asp:BoundField DataField="payeeUserID" HeaderText="payeeUserID" SortExpression="payeeUserID" />
                    <asp:BoundField DataField="paymentDateTime" HeaderText="paymentDateTime" SortExpression="paymentDateTime" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
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
        </asp:Panel>
        
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LoginDBConnectionString %>" SelectCommand="SELECT [PaymentID], [payorUserID], [payeeUserID], [paymentDateTime], [amount] FROM [SendPayment] WHERE ([payorUserID] = @payorUserID)">
                <SelectParameters>
                    <asp:SessionParameter Name="payorUserID" SessionField="UserName" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:LoginDBConnectionString %>" SelectCommand="SELECT [PaymentID], [payorUserID], [payeeUserID], [paymentDateTime], [amount] FROM [SendPayment] WHERE ([payeeUserID] = @payeeUserID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="payeeUserID" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Panel ID="Panel2" runat="server">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="PaymentID" DataSourceID="SqlDataSource3" GridLines="Vertical" Width="726px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="PaymentID" HeaderText="PaymentID" InsertVisible="False" ReadOnly="True" SortExpression="PaymentID" />
                    <asp:BoundField DataField="payorUserID" HeaderText="payorUserID" SortExpression="payorUserID" />
                    <asp:BoundField DataField="payeeUserID" HeaderText="payeeUserID" SortExpression="payeeUserID" />
                    <asp:BoundField DataField="paymentDateTime" HeaderText="paymentDateTime" SortExpression="paymentDateTime" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
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
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" EmptyDataText="No Record Found" GridLines="Vertical" Width="724px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="PaymentID" HeaderText="PaymentID" />
                    <asp:BoundField DataField="payorUserID" HeaderText="payorUserID" />
                    <asp:BoundField DataField="payeeUserID" HeaderText="payeeUserID" />
                    <asp:BoundField DataField="paymentDateTime" HeaderText="paymentDateTime" />
                    <asp:BoundField DataField="amount" HeaderText="amount" />
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
            </asp:Panel>
            <asp:Panel ID="Panel4" runat="server">
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="requestID" DataSourceID="SqlDataSource4" GridLines="Vertical" Width="726px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="requestID" HeaderText="requestID" InsertVisible="False" ReadOnly="True" SortExpression="requestID" />
                    <asp:BoundField DataField="requester" HeaderText="requester" SortExpression="requester" />
                    <asp:BoundField DataField="payeeUserID" HeaderText="payeeUserID" SortExpression="payeeUserID" />
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
                </asp:Panel>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:LoginDBConnectionString %>" SelectCommand="SELECT [requestID], [requester], [payeeUserID], [requestDateTime], [amount], [memo] FROM [RequestPayment] WHERE ([payeeUserID] = @payeeUserID)">
                <SelectParameters>
                    <asp:SessionParameter Name="payeeUserID" SessionField="UserName" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Go to Main Menu" />
    </form>
</body>
</html>
