<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestAndSplit.aspx.cs" Inherits="asp.netloginpage.RequestMoney" %>

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
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Recipient"></asp:Label>
                </td>
            <td>
            <asp:TextBox ID="payeeUserID" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Amount"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="amount" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                <asp:Label ID="Label1" runat="server" Text="Memo"></asp:Label>
                    </td>
                <td>
                    <asp:TextBox ID="memo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td> 
                    <asp:Button ID="Button1" runat="server" Text="Request Money" OnClick="Button1_Click" />
                </td>
            </tr>
            
       </table>
        <p>
                <asp:Label ID="lblSuccessMessage" runat="server" Text="Request Successful" ForeColor="Blue"></asp:Label>
        </p>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Go to Main Menu" />
    </form>
</body>
</html>
