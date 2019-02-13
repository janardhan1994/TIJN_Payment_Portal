<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SendMoney.aspx.cs" Inherits="asp.netloginpage.SendMoney" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="btmLogout" runat="server" Text="Logout" OnClick="btmLogout_Click" style="width: 57px" />            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Enter Recipient"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Recipient" runat="server" placeholder="UserID or MobileNumber or Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Enter Amount"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Amount" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Enter Memo"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="Memo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Do you want to cancel"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="isCancelled" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Confirm Payment" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
            <td></td>
            <td>
                <asp:Label ID="lblSuccessMessage" runat="server" Text="Payment Successful" ForeColor="Blue"></asp:Label></td>
        </tr>
            </table>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Go to Main Menu" />
    </form>
</body>
</html>
